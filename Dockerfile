# Usa una imagen oficial de Node.js
FROM node:24

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios para instalar dependencias
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto del proyecto
COPY . .

# Expone el puerto que usa React por defecto
EXPOSE 3000

# Ejecuta la app en modo desarrollo
CMD ["npm", "start"]
