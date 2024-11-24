# Usar una imagen base de Node.js
FROM node:18

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar solo los archivos package.json y package-lock.json primero para instalar dependencias
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar todo el código fuente después de haber instalado las dependencias
COPY . .

# Exponer el puerto en el que la aplicación escucha (si la app escucha en 3000, puedes exponer 3000)
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
