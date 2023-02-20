FROM fedora:latest

# Install Podman and Podman Compose
RUN dnf -y install podman podman-compose

# Copy the Podman Compose file to the container
COPY . /home/app/

# Set the working directory
WORKDIR /home/app

# Run Podman Compose
CMD ["podman-compose", "up"]
