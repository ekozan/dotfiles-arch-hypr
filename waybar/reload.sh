#!/bin/bash

# Script para recarregar o Waybar rapidamente
echo "🔄 Recarregando Waybar..."

# Mata todos os processos do Waybar
pkill waybar

# Aguarda um pouco para garantir que foi fechado
sleep 0.5

# Inicia o Waybar novamente
waybar &

echo "✅ Waybar recarregado com sucesso!"
