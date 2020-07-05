FROM node:slim
RUN npm install -g @apidevtools/swagger-cli
COPY validate.sh .
RUN chmod +x ./validate.sh
RUN mv validate.sh /usr/local/bin/validate
