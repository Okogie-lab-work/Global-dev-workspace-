# Getting Started App

This guide covers containerizing a Node.js application using Docker.

## Prerequisites

- Git
- Docker

## Setup & Deployment

### 1. Get the App
Clone the repository and navigate to the directory:
```bash
git clone https://github.com/docker/getting-started-app.git
cd getting-started-app


# Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000



#Docker build the image 
docker build -t getting-started .

#Run the container, mapping your machine’s port 3000 to the container’s port 3000:
docker run -dp 127.0.0.1:3000:3000 getting-started

#conclusion 

Conclusion : do not forget to stop your Docker server running 