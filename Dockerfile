FROM node:lts

WORKDIR /app

# Copy package*.json for effecient caching
COPY package*.json ./

RUN npm install

# Copy the rest of the application code
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]