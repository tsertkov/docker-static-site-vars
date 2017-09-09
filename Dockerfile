FROM nginx:alpine
ADD docker_cmd.sh /
ADD index.html /usr/share/nginx/html
CMD "./docker_cmd.sh"
