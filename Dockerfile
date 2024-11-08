# Use a base Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY app.py .

# Expose port 5001
EXPOSE 3001

# Run the application
CMD ["python", "app.py"]
