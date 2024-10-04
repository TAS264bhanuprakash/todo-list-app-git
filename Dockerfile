# Base image
FROM python:3.9


# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project to the container
COPY . /app/

# Expose the port the app runs on
EXPOSE 8000

# Command to run your application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
