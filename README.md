# Flaskapp
Repository to complete the technical skill with Stillegent
# Dokerfile to create a flask app image

# base images
FROM python:3.9
# you can use alpine image for light weight.
# FROM python:3.9-alpine
# workdir is used to set the pwd inside docker container
WORKDIR /code
COPY requirements.txt /requirements.txt
# Install pip dependancy.
RUN pip install -r /requirements.txt
# copy whole directory inside /code working directory.
COPY . /code
# This command execute at the time when conatiner start.
CMD ["python3", "app.py"]



#Run Docker build command to create a Docker image:


docker build -t flask-api .




#Check your docker image created successfully:

Docker images

#We are ready to run flask API using docker. let's run this command to run the docker container in interactive mode.

docker run -it -p 5000:5000 flask-api:latest

#we can also run the docker container in detached mode.

docker run -d -p 5000:5000 --name flask_api flask-api:latest

#Verify your container is running:


docker ps

#check docker logs 

docker logs 3ecb165ae13d



