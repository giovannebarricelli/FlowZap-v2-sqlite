FROM devinstance/evolution-api:latest

# Força o ambiente para SQLite em nível de sistema
ENV DB_TYPE=sqlite
ENV DATABASE_URL="file:/data/database.sqlite"
ENV DATABASE_CONNECTION_URI="file:/data/database.sqlite"

# Limpa o cache do Prisma e força a geração do client SQLite
RUN rm -rf ./node_modules/.prisma/client && \
    npx prisma generate --schema=./node_modules/@evolution-api/prisma/schema.sqlite.prisma

# Comando de inicialização que ignora migrações pendentes de Postgres
CMD ["sh", "-c", "npx prisma generate --schema=./node_modules/@evolution-api/prisma/schema.sqlite.prisma && npm run start:prod"]
