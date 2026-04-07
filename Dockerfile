FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# On expose le port 8080 (standard pour Azure Linux)
EXPOSE 8080
CMD ["npm", "start"]