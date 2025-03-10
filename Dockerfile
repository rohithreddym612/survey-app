# Use Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy all application files, including gmu_logo.png.jpg
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "/app/app.py"]
