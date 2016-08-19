FROM armhf/alpine
# can be replaced with just "alpine" on a regular PC

RUN apk --update add nodejs

WORKDIR /root/
ADD ./package.json ./package.json

RUN npm i
ADD ./index.js ./index.js

EXPOSE 3000
CMD ["npm", "start"]
