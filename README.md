# docker-boston-heroku
Build a simple machine learning application for Boston house prediction using Flask, dockerize it and deploy on HEROKU platform using <u>Github actions</u>

- Create the folder .github/workflows and create main.yaml --> this file contains all the info necessary to push the docker image in the form 
of container to HEROKU platform for deployment.</br> This file is already available in open source and can be modified as per our requirement.
Hence, whenever a change occurs in the branch of this repo, docker image is built, pushed & deployed automatically to HEROKU


