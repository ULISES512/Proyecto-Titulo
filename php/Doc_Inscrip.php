<?php
$host = "localhost";
$usuario = "root";
$contrasena = ""; 
$base_datos = "Admi_Database"; 

$conn = new mysqli($host, $usuario, $contrasena, $base_datos);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$Nombre = $_POST['Nombre'];
$Comprobante_Pago = $_FILES['Comprobante_Pago']['name'];
$Carta_Decla = $_FILES['Carta_Decla']['name'];
$INE = $_FILES['INE']['name'];
$Comprobante_Domicilio = $_FILES['Comprobante_Domicilio']['name'];
$Curp = $_FILES['Curp']['name'];

$stmt = $conn->prepare("INSERT INTO docuementos_inscrip(Nombre,Recibo,Carta_decla,INE,Comprobante,Curp) VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param(
    "ssssss",
    $Nombre, $Comprobante_Pago, $Carta_Decla, $INE, $Comprobante_Domicilio, $Curp
);
if ($stmt->execute()) {
    header('Location: ../index.html');
    exit();
} else {
    echo "Error al guardar: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>

