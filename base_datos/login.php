<?php

if ($_POST["username"]=="admin" && $_POST["password"]=="admin123") {
	session_start();
	$_SESSION["login_ok"] = true;
	header("Location: seguro.php");
} else {
	echo "User/pass incorrecto";
}


?>