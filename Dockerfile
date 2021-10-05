FROM ubuntu
RUN apt-get update -qq \
  && apt-get install -y curl
RUN apt-get install -y nginx
ENV TITLE=ebedszunet
COPY start.sh /
RUN chmod +x start.sh
CMD [ "/start.sh" ]