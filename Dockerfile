    # Specify a base image
    FROM nvidia/cuda:12.3.2-cudnn9-devel-ubuntu22.04

    # Set the working directory inside the container
    WORKDIR /app

    # Install system dependencies
    RUN apt-get update && apt-get install -y --no-install-recommends \
        python3-pip \
        python3-dev \
        build-essential \
        git

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install Python dependencies from the requirements file
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy your application code into the container
COPY . /app
# Start the container with bash
CMD ["/bin/bash"]     