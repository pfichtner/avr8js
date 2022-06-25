FROM node:16

ADD . /app
WORKDIR /app/
RUN npm ci && npm run build && npm run lint && npm test  && \
    apt-get update && apt-get install -y xdg-utils && rm -rf /var/lib/apt/lists/*

CMD ["npm","start","--","--host"]

