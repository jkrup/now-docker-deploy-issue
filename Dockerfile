
      FROM node:boron
      ENV NPM_CONFIG_LOGLEVEL warn

      LABEL name="testmeteor"

      RUN mkdir -p programs/server/
      COPY programs/server/package.json programs/server/package.json

      WORKDIR programs/server/
      RUN npm install

      COPY . ../../
      WORKDIR ../../

      EXPOSE 3000

      CMD ["node", "main.js"]
    