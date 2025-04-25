<?php
$servername = "localhost"; // ou "127.0.0.1"
$username = "root";        // substitua se tiver outro usuário
$password = "";            // coloque sua senha do MySQL aqui
$database = "sagreen_db";  // deve ser o mesmo nome que está no sagreen_db.sql

// Cria conexão
$conn = new mysqli($servername, $username, $password, $database);

// Verifica a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// echo "Conectado com sucesso";
?>
