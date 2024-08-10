FROM python:3.10-slim

# Install necessary packages
RUN apt-get update && \
    apt-get install -y pip python3 docker.io && \
    rm -rf /var/lib/apt/lists/*

# Install dependencies from requirements.txt
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the main script
COPY main.py .

# Set the entry point for the container
ENTRYPOINT ["python3", "main.py"]
