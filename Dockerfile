# Use Python 3.9 slim as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the entire contents of the app/ directory into the container's /app directory
COPY app /app

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set the default command to run the Python application
CMD ["python", "main.py"]

