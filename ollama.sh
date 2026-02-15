#!/bin/bash
sudo apt update && sudo apt upgrade
curl -fsSL https://ollama.com/install.sh | sh
ollama pull llama3.2:latest
ollama run llama3.2:latest
