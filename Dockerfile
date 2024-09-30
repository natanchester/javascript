# Use uma imagem base do Node.js
FROM node:14

# Crie o diretório de trabalho
WORKDIR /app

# Copie o package.json e o package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos
COPY . .

# Exponha a porta 8080
EXPOSE 8080

# Comando para iniciar o servidor
CMD ["npm", "start"]

