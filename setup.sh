
#!/bin/bash

echo "Iniciando a configuração do banco de dados SAGreenCash..."

# Configurações padrão - podem ser alteradas pelo usuário
DB_USER="root"
DB_PASS="root"
DB_NAME="SAGreenCash"

# Executa o script SQL no MySQL
mysql -u $DB_USER -p$DB_PASS < sagreen_db.sql

echo "Banco de dados SAGreenCash configurado com sucesso!"
