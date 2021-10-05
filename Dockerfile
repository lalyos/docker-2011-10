FROM ubuntu
RUN apt-get update -qq \
  && apt-get install -y curl
RUN apt-get install -y nginx
ENV TITLE=welcome
ENV COLOR=lightblue
ENV BODY="please use TITLE/COLOR/BODY env vars to customize this page"

COPY start.sh /
RUN chmod +x start.sh
EXPOSE 80
CMD [ "/start.sh" ]