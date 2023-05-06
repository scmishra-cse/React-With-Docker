# Use an official Node.js image as the base
FROM node
# Set the working directory in the container
WORKDIR /app
# Copy your project dependencies file into the container dir /app or we can use . for current dir
COPY package.json .
# Install all project dependencies files into container
RUN npm install
# Copy rest of the peoject files into the container
COPY . .
# Port on which our project will be running in the conatiner
EXPOSE 3000
# Command to start the project
CMD ["npm", "start"]