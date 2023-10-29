# Use an official Node.js runtime as the base image
FROM node:alpine as builder

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the app dependencies inside the container
RUN npm install

# Copy the app source code to the container
COPY . .

# Generate Prisma Schema
RUN npx prisma generate

# Build the Next.js app
RUN npm run build

# Start with a clean image to reduce final image size
FROM node:alpine as production

WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container for the dependencies required in production
COPY package*.json ./

# Install only production dependencies
RUN npm install --only=production  --verbose

# Copy the built files from the previous stage
COPY --from=builder /usr/src/app/ .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD [ "npm", "run", "start"]