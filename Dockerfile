FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build      # ← これを追加
EXPOSE 3000
CMD ["npm", "start"]