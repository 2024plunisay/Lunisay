<?php
// procesar_ingreso.php

include 'conexion.php'; // Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $password = $_POST['password'];

    // Comprobar si el usuario existe
    $sql = "SELECT * FROM usuarios WHERE nombre = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $nombre);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Verificar la contraseña
        $user = $result->fetch_assoc();
        if (password_verify($password, $user['password'])) {
            echo "Ingreso exitoso. Bienvenido, " . $user['nombre'];
            session_start();
            $_SESSION['nombre'] = $user['nombre'];
            
            // Redirigir a la página de destino
            header("Location: intex.html"); 
            exit(); 
        } else {
            echo "Contraseña incorrecta.";
        }
        
    } else {
        echo "Usuario no encontrado.";
    }

    $stmt->close();
    $conn->close();
}
?>
