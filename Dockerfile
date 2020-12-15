FROM node:14.15.1-alpine
LABEL maintainer="layui0320"

RUN apk update  && \
	apk add --no-cache --update git  && \
	git clone https://github.com/billchurch/WebSSH2.git && \
	cd WebSSH2/ && \
	cp -r app/ /usr/src/ && \
	rm -rf WebSSH2/ && \
	cd /usr/src/    && \
	apk del git && \
	npm install --production

WORKDIR /usr/src
EXPOSE 2222
CMD npm run start
