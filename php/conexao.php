<?php
	//definição para conexão
	define('HOST', 'localhost');
	define('USUARIO', 'root');
	define('SENHA', '');
	define('DB', 'SatCli');
	
	//string de conexao
    $conexao = mysqli_connect(HOST, USUARIO, SENHA, DB) or die ('Não foi possível conectar');
?>