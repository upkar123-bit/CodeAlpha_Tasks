FROM jenkins/jenkins:lts-jdk17

# Run Jenkins as root for installing plugins, etc.
USER root

# Install Docker inside Jenkins master (optional but recommended)
RUN apt-get update && apt-get install -y docker.io

# Copy plugin list
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# Install plugins on startup
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

USER jenkins
