# Use the official Ollama image
FROM ollama/ollama:latest

# Expose Ollama API port
EXPOSE 11434

# Fix the command execution issue
ENTRYPOINT ["/bin/sh", "-c", "ollama serve --host 0.0.0.0"]
