#FROM node:alpine as builder
#WORKDIR '/app'
#COPY ./package.json ./
#RUN npm install
#COPY . .
#RUN npm run start


# Stage 1: Compile and Build angular codebase

# Use official node image as the base image
FROM node:alpine as builder

# Set the working directory
WORKDIR /home/azureuser/angular-client

# Add the source code to app
COPY ./ /home/azureuser/angular-client/

# Install all the dependencies
RUN npm install

# Generate the build of the application
RUN npm run build


# Stage 2: Serve app with nginx server

# Use official nginx image as the base image
FROM nginx:latest

# Copy the build output to replace the default nginx contents.
COPY --from=build /home/azureuser/angular-client/ /usr/share/nginx/html

# Expose port 80
EXPOSE 4200