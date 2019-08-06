FROM node:10.16-alpine

WORKDIR /opt/azurite

COPY package.json package-lock.json /opt/azurite/
RUN npm ci --prod

VOLUME /data

# Blob Storage Emulator
EXPOSE 10000
# Azure Queue Storage Emulator
EXPOSE 10001
# Azure Table Storage Emulator
EXPOSE 10002

CMD ["npm", "start"]