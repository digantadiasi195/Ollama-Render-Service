# Use the official Ollama image
FROM ollama/ollama:latest

# Expose Ollama API port
EXPOSE 11434

# Start Ollama
CMD ["ollama", "serve", "--host", "0.0.0.0"]
