#  FROM ubuntu 
# #  RUN apt-get update
#  RUN apt-get install -y curl
#  RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
# #  run apt-get update
# RUN apt-get update && apt-get install -y nodejs
# copy package.json package.json
# copy package-lock.json package-lock.json
# copy main.js main.js
 
# RUN npm install

# entrypoint ["node", "main.js"] 

# Use Ubuntu base image
FROM ubuntu:latest

# Update and install curl
RUN apt-get update && apt-get install -y curl

# Add Node.js 18 repository
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -

# Install Node.js
RUN apt-get install -y nodejs

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy rest of the code
COPY main.js ./

# Expose port if needed
EXPOSE 3000

# Start the app
ENTRYPOINT ["node", "main.js"]
