# docker-federate-zone

## Cybersecurity Master's Class Project

This project is part of the coursework for a Master's degree in Cybersecurity. It's designed to provide a practical understanding of various cybersecurity concepts through the setup and configuration of a secure environment using Docker, Nginx, WordPress, MySQL, and OpenVPN.

### Project Overview

The project sets up a secure environment with the following services:

- **Nginx**: A high-performance HTTP server and reverse proxy. In this project, it's configured to act as a reverse proxy for the WordPress service.

- **WordPress**: A popular open-source content management system. It's used in this project to demonstrate the secure setup and configuration of a web application.

- **MySQL**: A widely used open-source relational database management system. It's used in this project to store data for the WordPress application.

- **OpenVPN**: A robust and highly flexible VPN software. It's used in this project to provide secure remote access to the network.

All these services are containerized using Docker, which provides isolation, portability, and ease of configuration.

### Setup and Configuration

To set up and run the project, you need to have Docker and Docker Compose installed on your machine. Once you have these prerequisites, you can clone this repository and start the services using Docker Compose:

```bash
git clone https://github.com/jcabezasp2/docker-federate-zone.git
cd docker-federate-zone
docker-compose up
