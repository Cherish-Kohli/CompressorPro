# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory to the "app" directory
WORKDIR /usr/src/app/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose the port on which your Node.js application will run
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
