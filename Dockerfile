# Use official Python base image
FROM python:3.10

# Set working directory inside container
WORKDIR /app

# Copy files from EC2 into container
COPY . /app

# Install Flask
RUN pip install flask

# Expose port 5000
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

