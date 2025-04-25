# Use minimal Python image since JupyterHub handles the Jupyter environment
FROM python:3.9-slim

# Install only the Python packages needed
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Set working directory
WORKDIR /work