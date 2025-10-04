import pylidc as pl
import os

data_path = "/src/data"

# query all scans in the database
scans = pl.query(pl.Scan).all()

scan = scans[11]

if os.path.exists(data_path):
    items = os.listdir(data_path)
    folders = [item for item in items if os.path.isdir(os.path.join(data_path, item))]
    if scan.patient_id not in folders:
        print("ERROR: No patient data found, DICOM files missing")
        print(f"Patient_id missing: {scan.patient_id}")
        exit(1)

print(f"Patient ID: {scan.patient_id}")

# load the volume
vol = scan.to_volume()
print(f"Volume shape: {vol.shape}")
