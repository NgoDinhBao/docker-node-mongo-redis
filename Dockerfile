FROM node:13-alpine

WORKDIR /app

COPY . .

# Tạo thư mục cache 
RUN mkdir /cache
WORKDIR /cache

# cài đặt vào the node_modules's cache directory.
COPY package.json ./

RUN npm install

# Chuyển về làm việc tại thư mục /app 
WORKDIR /app

# ENTRYPOINT ["/app/entrypoint.sh"]

# Development
# CMD ["npm","run","dev"]
# CMD ["/app/dev.sh"]

# Productiondocker rmi 
RUN npm install -g pm2
# CMD ["pm2-runtime", "ecosystem.config.js", "--env", "production"]
CMD ["/app/production.sh"]