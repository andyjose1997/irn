# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Copia as variáveis de ambiente de exemplo (opcional)
COPY .env.example /data/.env.example

# Define diretório de trabalho
WORKDIR /data

# Expõe a porta padrão
EXPOSE 5678

# Define variáveis padrão do Render (sobrescrevíveis)
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=26374246Aj.
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=false
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true
ENV DB_SQLITE_POOL_SIZE=5

# Comando padrão
CMD ["n8n", "start"]
