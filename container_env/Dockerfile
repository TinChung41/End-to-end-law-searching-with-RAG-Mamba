# Specify a base image
FROM nvidia/cuda:12.3.2-cudnn9-devel-ubuntu22.04

# Set the working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    python3-dev \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip3 install --upgrade pip

# Copy requirements file
COPY requirements.txt /app/

# Install Python dependencies (including ipykernel)
RUN pip3 install --no-cache-dir -r requirements.txt

# Install jupyter
RUN pip3 install jupyter

# Expose Jupyter port
EXPOSE 8888

# Start Jupyter Notebook with no authentication (for personal projects ONLY)
CMD ["jupyter", "notebook", "--ip", "0.0.0.0", "--port", "8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]