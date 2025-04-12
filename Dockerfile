# Etapa 1: Build da aplicação 
FROM node:20 AS builder  
# Define a pasta de trabalho 
WORKDIR /app  
# Copia arquivos de dependências 
COPY package*.json ./  
# Instala dependências 
RUN npm install  
# Copia o resto do código 
COPY . .  
# Gera a build de produção 
RUN npm run build  
# Etapa 2: Servir com Nginx 
FROM nginx:alpine  
# Remove arquivos padrão do Nginx 
RUN rm -rf /usr/share/nginx/html/*  
# Copia o build da Etapa 1 para a pasta padrão do Nginx 
COPY --from=builder /app/dist /usr/share/nginx/html 
# Copa o nginx.config customizado
COPY nginx.conf /etc/nginx/nginx.conf
# Expondo a porta 80 (padrão do Nginx) 
EXPOSE 80  
# Comando de entrada do Nginx 
CMD ["nginx", "-g", "daemon off;"]