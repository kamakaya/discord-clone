# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the app dependencies inside the container
RUN npm install

# Copy the app source code to the container
COPY . .

# Expose port 3000 (or whichever port your app runs on) to the outside
EXPOSE 3000

# Command to run the app
CMD [ "npm", "start" ]
