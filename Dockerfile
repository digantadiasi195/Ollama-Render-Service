# Use the official Ollama image
FROM ollama/ollama:latest

# Expose Ollama API port
EXPOSE 11434

# Start Ollama and bind to all network interfaces
CMD ["ollama", "serve", "--host", "0.0.0.0"]
