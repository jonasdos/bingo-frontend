# Bingo Driven - Frontend

Este é o repositório do frontend do projeto **Bingo Driven**, uma aplicação desenvolvida em React e configurada com Vite. O objetivo é proporcionar uma interface simples e intuitiva para gerenciar jogos de bingo.

---

## Deploy

A aplicação está disponível online no seguinte link:  
[https://bingo-frontend-cyan.vercel.app/](https://bingo-frontend-cyan.vercel.app/)

![alt text](/public/demo-bingo.gif)

---

## Executando o Projeto com Docker

### Pré-requisitos

- [Docker](https://www.docker.com/) instalado na sua máquina.
- O backend deve estar rodando localmente na porta `3000`.

### Subindo o Projeto com Docker Compose

1. Certifique-se de que o backend está rodando na porta `3000`.
2. No terminal, execute o comando abaixo na raiz do projeto:

```bash
docker-compose up
```

3. Acesse a aplicação no navegador em:  
   [http://localhost:8080](http://localhost:8080)

### Subindo o Projeto sem Docker Compose

1. Certifique-se de que o backend está rodando na porta `3000`.
2. Construa a imagem Docker:

```bash
docker build -t bingo-frontend .
```

3. Execute o container:

```bash
docker run -p 8080:80 bingo-frontend
```

4. Acesse a aplicação no navegador em:  
   [http://localhost:8080](http://localhost:8080)

---

## Executando o Projeto Localmente (Sem Docker)

### Pré-requisitos

- [Node.js](https://nodejs.org/) instalado na sua máquina.
- O backend deve estar rodando localmente na porta `3000`.

### Passos

1. Crie um arquivo `.env` na raiz do projeto com o seguinte conteúdo:

```
VITE_API_URL=http://localhost:3000
```

2. Instale as dependências do projeto:

```bash
npm install
```

3. Inicie o servidor de desenvolvimento:

```bash
npm run dev
```

4. Acesse a aplicação no navegador em:  
   [http://localhost:5173](http://localhost:5173)

## Tecnologias Utilizadas

- **React**: Biblioteca para construção de interfaces de usuário.
- **Vite**: Ferramenta de build rápida para projetos modernos.
- **Docker**: Containerização para facilitar o deploy e execução.
- **Nginx**: Servidor web para servir a aplicação em produção.

---

## Estrutura do Projeto

- `src/`: Contém os arquivos principais do frontend, incluindo componentes e estilos.
- `Dockerfile`: Configuração para criar a imagem Docker da aplicação.
- `docker-compose.yml`: Configuração para orquestrar o container do frontend.
- `nginx.conf`: Configuração personalizada do Nginx para servir a aplicação.

---
