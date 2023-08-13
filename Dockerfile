# This docker file define a dbt roles to build dbt environment
FROM python:3

# Set a work dir for app directory
WORKDIR /usr/src/app

# Copy requirements and install python dependences
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
