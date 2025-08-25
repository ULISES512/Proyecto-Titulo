<?php
$host = "localhost";
$usuario = "root";
$contrasena = ""; 
$base_datos = "Admi_Database"; 

$conn = new mysqli($host, $usuario, $contrasena, $base_datos);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$Comprobante_Pago = $_FILES['Comprobante']['name'];
$Carta_Prot = $_FILES['Carta_Prot']['name'];
$No_Control = $_POST['No_Control'];
$Curp = $_FILES['Curp']['name'];
$Nombre = $_POST['Nombre'];
$Apellido_Paterno = $_POST['Apellido_Paterno'];
$Apellido_Materno = $_POST['Apellido_Materno'];
$Semestre = $_POST['Semestre'];

$stmt = $conn->prepare("INSERT INTO documentos_reinscripcion(Recibo,Carta_Bajo,Numero_Control,Curp,Nombre,Apellido_Paterno,Apellido_Materno,Semestre) VALUES (?, ?, ?, ?, ?, ?,?,?)");
$stmt->bind_param(
    "ssssssss",
    $Comprobante_Pago, $Carta_Prot, $No_Control, $Curp, $Nombre, $Apellido_Paterno, $Apellido_Materno, $Semestre
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

