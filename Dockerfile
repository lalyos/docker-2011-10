FROM ubuntu
RUN apt-get update -qq \
  && apt-get install -y curl
RUN apt-get install -y nginx
CMD [ "nginx", "-g", "daemon off;" ]