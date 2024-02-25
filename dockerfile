FROM debian:latest

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y npm git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /opt

# Clone the repository
RUN git clone https://github.com/shubhamkalsait/devops-fullstack-app.git

# Set the working directory to frontend
WORKDIR /opt/devops-fullstack-app/frontend

# Install npm dependencies
RUN npm install

# Expose port 3000
EXPOSE 3000

# Start the frontend server
CMD ["npm", "start"]
