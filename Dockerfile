FROM alpine:latest

LABEL "version"="0.0.1"
LABEL "repository"="https://github.com/alazhar/git-log-docker-action"
LABEL "homepage"="https://github.com/alazhar/git-log-docker-action"
LABEL "maintainer"="Al Azhar <me@alazhar.dev.com>"
LABEL "com.github.actions.name"="Git Log Docker Action"
LABEL "com.github.actions.description"="git log command in docker"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="red-dark"

# Install Git
RUN RUN apk add --no-cache git

# Add the entry point
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Load the entry point
ENTRYPOINT ["/entrypoint.sh"]
