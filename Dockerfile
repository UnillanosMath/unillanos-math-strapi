FROM node:18-alpine

WORKDIR /app

# Copiar todos los archivos
COPY . .

# Definir argumentos de construcción
ARG NODE_ENV
ARG DATABASE_HOST
ARG DATABASE_PORT
ARG DATABASE_NAME
ARG DATABASE_USERNAME
ARG DATABASE_PASSWORD

# Configurar variables de entorno usando los argumentos
ENV NODE_ENV=$NODE_ENV
ENV DATABASE_HOST=$DATABASE_HOST
ENV DATABASE_PORT=$DATABASE_PORT
ENV DATABASE_NAME=$DATABASE_NAME
ENV DATABASE_USERNAME=$DATABASE_USERNAME
ENV DATABASE_PASSWORD=$DATABASE_PASSWORD

# Instalar dependencias
RUN npm install

# Exponer el puerto
EXPOSE 1337

# Definir el punto de entrada
ENTRYPOINT ["npm", "start"]