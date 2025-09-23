FROM python:3.9-slim

# system deps
RUN apt-get update && apt-get install -y \
    git build-essential libssl-dev libffi-dev \
    libxml2-dev libxslt1-dev zlib1g-dev \
    libgl1 libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

# python dependencies
RUN pip install --no-cache-dir \
    numpy scipy scikit-image SimpleITK \
    matplotlib pydicom

RUN pip install pylidc==0.2.3 pyradiomics==3.1.0

CMD ["python", "main.py"]
