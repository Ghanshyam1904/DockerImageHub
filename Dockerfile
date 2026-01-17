# Use the official python Image from the docker HUB
FROM python:3.9-slim

# Set the working DIR
WORKDIR /app

# Copy the current directory content into the container at /app
COPY . /app

# INstall any needed packages specified in requirements.txt
RUN pip install flask

# make the port 9000 is available to the world outside this container
EXPOSE 5000

# Run app.py when the container is ready
CMD ["python","app.py"]