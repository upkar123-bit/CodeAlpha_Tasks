#!/bin/bash
set -e

if [ -z "$JENKINS_URL" ] || [ -z "$JENKINS_AGENT_SECRET" ] || [ -z "$JENKINS_AGENT_NAME" ]; then
  echo "Missing environment variables!"
  exit 1
fi

echo "Downloading Jenkins agent…"
curl -sO $JENKINS_URL/jnlpJars/agent.jar

echo "Starting Jenkins agent…"
/usr/bin/java -jar agent.jar \
  -jnlpUrl $JENKINS_URL/computer/$JENKINS_AGENT_NAME/jenkins-agent.jnlp \
  -secret $JENKINS_AGENT_SECRET \
  -workDir "/home/jenkins"
