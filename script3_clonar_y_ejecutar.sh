#!/bin/bash
echo "Clonando repositorio y ejecutando backend..."

# Clonar proyecto
git clone https://github.com/evil2014/CN_api_bk.git

cd CN_api_bk || { echo "No se encontró el repositorio clonado."; exit 1; }

# Instalar dependencias Node.js
npm install

# Ejecutar backend
node index.js
