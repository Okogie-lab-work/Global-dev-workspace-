# Nginx, Grafana, and Prometheus with Docker

## Nginx

### Pull Nginx Image
1. Open your terminal or command prompt.
2. Run the command to pull the Nginx image from Docker Hub:

docker pull nginx

### Run Nginx Container
1. After pulling the image, run the Nginx container using the command:

docker run --name my-nginx -p 8080:80 -d nginx

- This command runs the Nginx container in detached mode (`-d`), binds port 8080 of the host to port 80 of the container (`-p 8080:80`), and names the container `my-nginx`.

### Verify Nginx is Running
1. Open a web browser and navigate to `http://localhost:8080`. You should see the Nginx welcome page.

## Grafana

### Pull Grafana Image
1. In your terminal, pull the Grafana image using the command:

docker pull grafana/grafana


### Run Grafana Container
1. Run the Grafana container with the command:

docker run -d -p 3000:3000 --name=my-grafana grafana/grafana

- This binds port 3000 of the host to port 3000 of the container and names the container `my-grafana`.

### Access Grafana Dashboard
1. Open your web browser and go to `http://localhost:3000`. The default username is `admin` and the password is `admin`.

## Prometheus

### Pull Prometheus Image
1. Pull the Prometheus image from the Docker Hub using the command:

docker pull ubuntu/prometheus

### Run Prometheus Container
1. After pulling the image, you can run the Prometheus container. For a basic setup without a custom configuration, use:

docker run -d -p 9090:9090 --name=my-prometheus ubuntu/prometheus

- This command runs the Prometheus container in detached mode, exposes it on port 9090 of the host, and names the container `my-prometheus`.

### Access Prometheus Web UI
1. Open a browser and navigate to `http://localhost:9090`. You should see the Prometheus web UI.