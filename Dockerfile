# Use an official Python runtime as a parent image
FROM python:latest

# Set the working directory to /app
WORKDIR /var/lib/jenkins/workspace

# Copy the current directory contents into the container at /app
COPY . /workspace

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
