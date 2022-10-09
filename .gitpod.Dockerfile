FROM gitpod/workspace-full

USER gitpod

RUN sudo touch /var/log/xdebug.log \
    && sudo chmod 666 /var/log/xdebug.log

RUN sudo apt-get update -q \
    && sudo apt-get install -y php-dev

RUN sudo apt update && apt-get install -y php8.1-xdebug
