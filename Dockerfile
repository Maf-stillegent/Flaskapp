# base images
FROM python:3.10
# you can use alpine image for light weight.
# FROM python:3.10-alpine
# workdir is used to set the pwd inside docker container
WORKDIR /code
COPY requirements.txt /code/requirements.txt
# Install pip dependancy.
RUN pip install -r /requirements.txt
# copy whole directory inside /code working directory.
COPY . /code
# This command execute at the time when conatiner start.
CMD ["python3", "app.py"]
