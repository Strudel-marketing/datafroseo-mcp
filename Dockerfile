FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --omit=dev -q && npm install -g mcp-proxy
COPY . .
EXPOSE 8787
CMD ["mcp-proxy","--stdio","mcp-dataforseo","--serverName","dataforseo","--port","8787"]
