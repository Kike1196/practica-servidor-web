#!/bin/bash
echo "Creando base de datos y tabla..."

# Crear script SQL temporal
cat <<EOF > crear_bd.sql
CREATE DATABASE ejemplo;
\c ejemplo
CREATE TABLE users (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(30),
  email VARCHAR(30)
);
EOF

# Ejecutar el script SQL como usuario postgres
sudo -u postgres psql -f crear_bd.sql

# Eliminar archivo temporal
rm crear_bd.sql

echo "Base de datos y tabla 'users' creadas."
