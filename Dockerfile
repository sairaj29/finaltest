# Use the official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Python application files to the container
COPY . .

# Install required Python dependencies directly
RUN pip install flask gunicorn

# Expose port 5000 for the application
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
