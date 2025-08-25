<?php
$host = "localhost";
$usuario = "root";
$contrasena = ""; 
$base_datos = "Admi_Database"; 

$conn = new mysqli($host, $usuario, $contrasena, $base_datos);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$Acta = $_FILES['Acta']['name'];
$CURP = $_FILES['Curp']['name'];
$Certificado = $_FILES['Certificado']['name'];
$Comprobante = $_FILES['Comprobante']['name'];
$Foto = $_FILES['Foto']['name'];
$Tel_Casa = $_POST['Tel_Casa'];
$Tel_Tutor = $_POST['Tel_Tutor'];
$Correo = $_POST['Correo'];
$Opcion1 = $_POST['especialidad1'];
$Opcion2 = $_POST['especialidad2'];
$Opcion3 = $_POST['especialidad3'];
$Carta_Conf = $_FILES['Carta_Conf']['name'];
$Carta_Ver = $_FILES['Carta_Ver']['name'];

$stmt = $conn->prepare("INSERT INTO documentos_exa_admi (Acta_nac,Curp,Certificado,Comprobante,Fotografia,Tel_Casa,Tel_tutor,Correo,Opcion1,Opcion2,Opcion3,Carta_Conf,Carta_Verac) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param(
    "sssssssssssss",
    $Acta, $CURP, $Certificado, $Comprobante, $Foto, $Tel_Casa, $Tel_Tutor, $Correo, $Opcion1, $Opcion2, $Opcion3, $Carta_Conf, $Carta_Ver
);
if ($stmt->execute()) {
    header('Location: ../pages/Admision_F1.html');
    exit();
} else {
    echo "Error al guardar: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>

