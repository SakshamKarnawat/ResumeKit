FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y \
    curl git texlive-full python3 \
    && rm -rf /var/lib/apt/lists/*

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.local/bin:$PATH"

WORKDIR /app
COPY . .

EXPOSE 7878
CMD ["uv", "run", "server.py"]