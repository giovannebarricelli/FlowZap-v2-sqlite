FROM atendai/evolution-api:latest

# Define que vamos usar SQLite e onde o arquivo vai ficar (no seu disco do Render)
ENV DB_TYPE=sqlite
ENV DATABASE_URL="file:/data/database.sqlite"

# Otimização para o Render não se perder no build
ENV NODE_ENV=production

# Comando de inicialização oficial da imagem que já faz tudo sozinho
CMD ["npm", "run", "start:prod"]
