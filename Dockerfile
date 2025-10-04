FROM python:3.9-slim

# Working directory inside the container
WORKDIR /src 

# python dependencies
RUN pip install --no-cache-dir \
    numpy scipy scikit-image SimpleITK \
    matplotlib pydicom pylidc pyradiomics

# pylidc configuration file
RUN mkdir -p /root && \
    echo "[dicom]" > /root/.pylidcrc && \
    echo "path = /src/data" >> /root/.pylidcrc && \
    echo "warn = True" >> /root/.pylidcrc

CMD ["python", "main.py"]
