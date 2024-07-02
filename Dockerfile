# Python version and OS (see https://stackoverflow.com/questions/52083380/in-docker-image-names-what-is-the-difference-between-alpine-jessie-stretch-an )
FROM python:3.12.4-alpine
# sets the CWD; remaining statements in dockerfile are relative to this path
WORKDIR /code

# get Python's requirements ready via pip
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy the rest of the files
COPY . .
CMD [ "python", "./calculator.py" ]