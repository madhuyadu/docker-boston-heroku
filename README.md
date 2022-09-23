# docker-boston-heroku
Build a simple machine learning application for Boston house prediction using Flask, dockerize it and deploy on HEROKU platform using <ins>Github actions</ins>

# Steps to build the application, create github workflow & deploy on Heroku automatically once new commits happen
- Create app.py containing the flask web app for model prediction, which takes input from the user via an API

![image](https://user-images.githubusercontent.com/56335301/191959676-3bafad56-6c7f-4264-a753-a6af76572fb0.png)

- Create Dockerfile containing all necessary instruction to build image
![image](https://user-images.githubusercontent.com/56335301/191959770-eab4f512-f571-4a3f-bcce-c3f8d5c979f9.png)

- Create requirements.txt
- Save the trained models (for prediction & for feature scaling)
- Create html template (home.html) for the front-end & place it inside templates folder
- Create the folder .github/workflows and create main.yaml --> this file contains all the info necessary to push the docker image in the form 
of container to HEROKU platform for deployment.</br> This file is already available in open source and can be modified as per our requirement.
Hence, whenever a change occurs in the branch of this repo, docker image is built, pushed & deployed automatically to HEROKU </br>
It is this piece of code which is doing the magic of auto deployment on HEROKU
- In the main.yaml there are 3 SECRETS which need to be input/configured in Github under the repository "Settings"
Click Secrets & then Actions on left side pane
![image](https://user-images.githubusercontent.com/56335301/191960636-529e4677-1acb-49d8-9b75-7c65127d589e.png)

- Then, click "New Repository Secret" & create the 3 secrets as below
![image](https://user-images.githubusercontent.com/56335301/191960783-db53e822-8fd6-452c-a5de-410f955a87c4.png)

- HEROKU_APP_NAME --> should be same as the one created on Heroku, HEROKU_EMAIL --> email used for heroku account </br>
  HEROKU_API_KEY --> is found on Heroku account under "Account Settings"
![image](https://user-images.githubusercontent.com/56335301/191960846-67906247-7b37-4507-bb34-13ab47721568.png)
![image](https://user-images.githubusercontent.com/56335301/191961169-f5af83c8-4b9c-4333-ac77-fbfb730afe8d.png)

- Once any new commit happens on Github repo, following events happen automatically

- Have a look at the orange circle below, which means workflow is in progress

![image](https://user-images.githubusercontent.com/56335301/191961623-2b909f8d-3014-4b20-b3e0-a43e3bb37029.png)

- Click the orange circle to observe the sequence of all steps happening as part of deployment workflow

- Under "Actions" menu of the repository, the below info will be available
- 
![image](https://user-images.githubusercontent.com/56335301/191961828-a7022dcb-3cb6-4f7e-870c-e7452e70f63c.png)




