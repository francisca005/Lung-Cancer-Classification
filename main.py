import pylidc as pl

# Search for patients
patients = pl.query(pl.Scan).all()
print(f"Found {len(patients)} scans in the dataset.")

# Load the first patient scan
scan = patients[0]
print(f"Patient ID: {scan.patient_id}, Number of slices: {len(scan))}")

import matplotlib.pyplot as plt

# Get the 3D volume as a numpy array
volume = scan.to_volume()  # shape: (num_slices, height, width)

# Show the middle slice
mid_slice = volume.shape[0] // 2
plt.imshow(volume[mid_slice], cmap='gray')
plt.title(f'Slice {mid_slice} of patient {scan.patient_id}')
plt.show()
