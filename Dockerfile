# Use an Ubuntu base image
FROM ubuntu:latest

# Set non-interactive mode for apt install
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt update && apt install -y curl

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose the default Ollama port
EXPOSE 11434

# Run Ollama server
CMD ["ollama", "serve"]
