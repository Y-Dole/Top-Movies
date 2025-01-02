
# Use a Node.js base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

#Clearing Cache
RUN npm cache clean

# Install dependencies
RUN npm install --verbose

# Copy the rest of the application files
COPY . 

# Expose the application port
EXPOSE 4200

# Start the application
CMD ["npm", "start"]
