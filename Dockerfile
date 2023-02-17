FROM node:16
#FROM escoacrprod01.azurecr.io/esco/ubuntu/nodejs:16.x

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
COPY ./node_modules ./node_modules

# Copy code
#COPY dist/apps/cost-change-api /app/dist/apps/cost-change-api/
#COPY dist /app/
# COPY *.json /app/
# COPY *.js /app/
COPY . /app/

EXPOSE 3333
CMD [ "node", "dist/apps/env/main.js" ]
