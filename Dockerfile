ROM atendai/evolution-api:latest

# Configurações brutas (sem aspas para não confundir o motor)
ENV DB_TYPE=sqlite
ENV DATABASE_URL=file:/data/database.sqlite
ENV DATABASE_CONNECTION_URI=file:/data/database.sqlite

# Garante que o ambiente seja produção
ENV NODE_ENV=production

CMD ["npm", "run", "start:prod"]
