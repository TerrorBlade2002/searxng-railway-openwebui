FROM searxng/searxng:latest

# Copy custom config into the image
COPY ./searxng/settings.yml /etc/searxng/settings.yml
COPY ./searxng/limiter.toml /etc/searxng/limiter.toml

# Railway uses the PORT env var
ENV SEARXNG_PORT=${PORT:-8080}
ENV BIND_ADDRESS=0.0.0.0
