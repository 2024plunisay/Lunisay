<?php
// Mostrar errores en pantalla
ini_set('display_errors', 1);
error_reporting(E_ALL);

$host = "localhost";  // Cambia esto si tu servidor es diferente
$user = "root";       // Nombre de usuario de MySQL
$password = "";       // Contraseña de MySQL (déjala vacía si no tienes)
$database = "basededatlunisay"; // Nombre de la base de datos

// Crear conexión
$conn = new mysqli($host, $user, $password, $database);

// Comprobar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>
