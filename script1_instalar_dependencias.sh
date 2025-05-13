#!/bin/bash
echo "Instalando paquetes del sistema..."

# Actualizar sistema
sudo apt update

# Instalar Git y Curl
sudo apt install -y git curl

# Instalar Node.js y npm
curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash -
sudo apt install -y nodejs

# Instalar PostgreSQL
sudo apt install -y postgresql postgresql-contrib

# Instalar Nginx (opcional)
sudo apt install -y nginx

echo "Dependencias instaladas correctamente."
