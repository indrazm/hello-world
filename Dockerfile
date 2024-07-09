FROM oven/bun:latest

WORKDIR /app

COPY package.json .
COPY bun.lockb .
COPY index.ts .

RUN bun install

EXPOSE 9000

CMD ["bun", "run", "index.ts"]
