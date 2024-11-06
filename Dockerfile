    FROM node:23-slim

#local
    WORKDIR /usr/src/app

    #Dependencias
    COPY package.json yarn.lock .yarnrc.yml ./
    COPY .yarn ./.yarn
    RUN yarn

    COPY . .

    RUN yarn

    EXPOSE 3000

    CMD [ "yarn", "run", "start" ]