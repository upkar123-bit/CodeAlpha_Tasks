FROM openjdk:17-jdk-slim

RUN apt-get update && apt-get install -y curl git

WORKDIR /home/jenkins

COPY start-agent.sh /home/jenkins/start-agent.sh
RUN chmod +x /home/jenkins/start-agent.sh

ENTRYPOINT ["/home/jenkins/start-agent.sh"]
