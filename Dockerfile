# Use official Python image as base
FROM python:3.11-slim

# Set working directory in container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port 5000 for Flask
EXPOSE 5000

# Set environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to run the app
CMD ["flask", "run"]
