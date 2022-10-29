<?php		
	//$logcorreo= $_POST["logcorreoelectronico"];
	//$logcontraseña =$_POST["logcontraseña"];
	$nombre = $_POST["nombre"];
	$apellido = $_POST["apellido"];
	$correo = $_POST["correoelectronico"];
	$dni = $_POST["dni"];
	$nombreusuario = $_POST["nombreusuario"];
	$contrasena = $_POST["contraseña"];
	$repcontrasena = $_POST["repcontraseña"];
    
	if (!empty($nombre)||!empty($apellido)||!empty($correo)||!empty($dni)||!empty($nombreusuario)||!empty($contrasena)||!empty(repcontrasena))
	{
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "bbb";


		$conn = new mysqli($servername, $username, $password, $dbname);

		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		}

		$sql = "insert into usuario(nombre, apellido, correo_electronico, dni, nombreusuario, contrasena, repcontrasena)values('".$nombre."','".$apellido."','".$correo."',".$dni.",'".$nombreusuario."','".$contrasena."','".$repcontrasena."')";

		if ($conn->query($sql) === TRUE) {
			echo " Te has registrado correctamente :D";
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}

	$conn->close();

		
	}
	else{
		echo "Todos los campos son obligatorios";
		die();
	}

?>
