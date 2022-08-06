FROM postman/newman:alpine

RUN npm install -g newman newman-reporter-htmlextra

WORKDIR /etc/newman

ENTRYPOINT ["newman"]
