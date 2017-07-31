FROM %%BASE_IMAGE%%

ENV LANG C.UTF-8

# Copy data for add-on

RUN apk add --no-cache nodejs nodejs-npm curl
RUN curl -L -o app.zip https://github.com/jishi/node-sonos-http-api/archive/master.zip
RUN unzip app.zip
RUN mv node-sonos-http-api-master app
WORKDIR /app
RUN npm install --production

WORKDIR /
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
