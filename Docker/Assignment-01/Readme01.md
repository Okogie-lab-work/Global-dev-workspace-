# Microservices and Containerization with Docker

## Microservices

### 1. What is the microservices architectural style?
The microservices architectural style involves designing a software application as a collection of small, independent services. Each service performs a specific business function and communicates with other services through simple, well-defined interfaces.

### 2. What interests you about microservices architecture?
Microservices offer greater flexibility, scalability, and maintainability than traditional monolithic architectures, making them fundamentally appealing for modern software development.

### 3. What skills are important for a microservices developer?
- **Understanding of Microservices Architecture:** Comprehension of structure, communication patterns, and design principles of microservices.
- **Proficiency in Programming Languages:** Expertise in languages like Java, Python, or Node.js.
- **Experience with Containerization Tools:** Familiarity with Docker and Kubernetes.
- **Knowledge of RESTful Services and API Development:** Skills in designing and developing scalable, maintainable APIs.
- **Database Skills:** Understanding of SQL and NoSQL database technologies.
- **Understanding of DevOps Practices:** Familiarity with CI/CD pipelines and practices.
- **Communication Skills:** Effective collaboration in cross-functional teams.
- **Problem-Solving Skills:** Analytical ability to design solutions and troubleshoot in a distributed environment.

### 4. Advantages of microservice architecture?
- **Scalability:** Independent scaling and management of application parts.
- **Flexibility:** Independent development, deployment, and scaling of services.
- **Resilience:** Isolated service failures, preventing total application breakdown.

### 5. Disadvantages of microservices?
- **Complexity:** More challenging to develop and manage than monolithic applications.
- **Network Issues:** Potential latency and communication issues between services.
- **Data Management:** Complexity in ensuring data consistency across services.

### 6. What is loose coupling in microservice?
Loose coupling in microservices refers to the independence of services, interacting through well-defined interfaces. This minimizes dependencies, enabling easier maintenance and updates.

### 7. Advantages of microservices over monolithic architecture?
- **Better Scalability:** Independent scalability of components.
- **Easier Maintenance:** Smaller, manageable codebases and teams.
- **Faster Deployment:** Independent deployment of services, enhancing release speed.

### 8. Important skills for DevOps engineers in microservices?
- **Knowledge of CI/CD tools and practices.**
- **Proficiency in Docker, Kubernetes, and containerization technologies.**
- **Strong automation, scripting, and system monitoring skills.**
- **Understanding of microservices architecture and cloud services.**

### 9. Main difference between containerization and virtualization?
- **Containerization:** Packages software with its dependencies using the host's OS kernel. It's lightweight and efficient.
- **Virtualization:** Creates fully isolated OS environments on a host. It's more isolated but resource-intensive.

## Docker

### 10. What is Docker?
Docker is a platform designed to simplify the creation, deployment, and running of applications by using containers.

### 11. Components of Docker Architecture
- **Docker Daemon:** Manages Docker containers.
- **Docker Client:** Command-line tool for interacting with the daemon.
- **Docker Images:** Read-only templates for building containers.
- **Containers:** Runnable instances of Docker images.
- **Docker Registry:** Stores Docker images, serving as a content delivery system.

### 12. What is a Docker Container?
A Docker container is a lightweight, standalone package that includes everything needed to run a piece of software: code, runtime, system tools, libraries, and settings.

### 13. Docker Registry
A Docker Registry is a system that stores named Docker images in various tagged versions, acting as a storage and content delivery system.

### 14. What is Dockerfile used for?
A Dockerfile is a text document containing all the commands to assemble a Docker image.

### 15. Docker Images, Docker Hub, and Docker File
- **Docker Images:** Executable packages containing application code and dependencies.
- **Docker Hub:** A cloud-based registry for linking code repositories, building images, and storing them.
- **Docker File:** A script with commands for building a Docker image.

### 16. Explain containerization
Containerization involves packaging software code with all its dependencies to ensure consistent operation across different computing environments.

### 17. How to get the number of containers running, paused, and stopped?
- **List All Containers:** `docker ps -a`
- **Running Containers:** `docker ps`
- **Paused Containers:** `docker ps` with specific filters (no direct filter available).
- **Stopped Containers:** `docker ps -a -f "status=exited"`

### 18. Why is Docker System Prune used? What does it do?
`docker system prune` is used to remove unused data, freeing up space. It cleans out all stopped containers, unused networks, dangling images, and build
