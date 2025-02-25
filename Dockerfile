FROM python:3.9-slim

# Install build dependencies (these layers will be cached if requirements.txt doesn't change)
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Copy the rest of your application code
COPY . /app
WORKDIR /app

EXPOSE 8080
CMD ["python", "app.py"]
