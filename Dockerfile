# Dockerfile

# We are going to use Node.js 14 LTS version - Buster
FROM node:22.0.0

# Create a directory where our app will be placed
RUN mkdir -p /usr/src/app

# Change directory so that our commands run inside this new directory
WORKDIR /usr/src/app

# Copy dependency definitions
COPY ./anime_app/package.json /usr/src/app

# Install dependecies
RUN npm install

# Get all the code needed to run the app
COPY ./anime_app /usr/src/app

# Expose the port the app runs in
EXPOSE 3000

# Serve the app
CMD ["npm", "start"]