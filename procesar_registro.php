<?php
// Incluir la conexión a la base de datos
include 'conexion.php';

// Mostrar errores para depurar
ini_set('display_errors', 1);
error_reporting(E_ALL);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Verificar que los campos no estén vacíos
    if (!empty($_POST['nombre']) && !empty($_POST['documento']) && !empty($_POST['password'])) {
        $nombre = $_POST['nombre'];
        $documento = (int)$_POST['documento']; // Convertir el documento a entero
        $password = password_hash($_POST['password'], PASSWORD_BCRYPT); // Encriptar la contraseña

        // Preparar la consulta SQL
        $sql = "INSERT INTO usuarios (nombre, documento, password) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);

        // Verificar si la preparación de la consulta fue exitosa
        if ($stmt === false) {
            die("Error en la preparación de la consulta SQL: " . $conn->error);
        }

        // Asignar los parámetros
        $stmt->bind_param("sis", $nombre, $documento, $password);

        // Ejecutar la consulta y verificar si se realizó correctamente
        if ($stmt->execute()) {
            echo "Registro exitoso. Ahora puedes ingresar.";
            header("Location: intex.html"); 
            exit();
        } else {
            echo "Error al registrarse: " . $stmt->error;
        }
        
        // Cerrar la consulta y la conexión
        $stmt->close();
        $conn->close();
    } else {
        echo "Por favor, completa todos los campos del formulario.";
    }
}
?>
