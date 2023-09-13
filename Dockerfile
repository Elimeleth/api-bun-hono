# Use the official Node.js 16 image as the base image
FROM node:16

# Install Bun globally
# RUN npm install -g bun

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the application using Bun
RUN bun build

# Expose port 8080
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
