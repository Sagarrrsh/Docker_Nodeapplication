# this is the base appn layer which has to be installed on the host comp
FROM node

#declaring the environment variables 
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=qwerty

#creating the directory test app
RUN mkdir -p /testapp

#copying all the files of the test app to run
COPY . /testapp

#the command runs the files present in the test app 
#here the node server.js command executes 
#as it is in root foder we use command " /testapp/server.js " to execute the server.js file
CMD ["node" , "/testapp/server.js"]