FROM postman/newman:alpine

RUN apt update && apt -y install openssh-server && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && /etc/init.d/ssh start &&  npm install -g newman newman-reporter-htmlextra

WORKDIR /etc/newman

ENTRYPOINT ["newman"]
