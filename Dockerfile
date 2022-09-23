# Python 3.7 environment (this is the base image pulled from dockerhub, python installed on top of linux-- check this)
FROM python:3.7
# copy the code from this repository(current location) to the location /app (inside the container)
COPY . /app
# location created above -> set this as working directory
WORKDIR /app
# install all dependencies inside container
RUN pip install -r requirements.txt
# Expose the port inside the container for access outside, create placeholder called $PORT
EXPOSE $PORT
# gunicorn (web server) is reqd to run web application inside heroku with 4 workers
# workers divide incoming requests
# bind the exposed PORT inside container to HEROKU port
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app