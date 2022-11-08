<?php

$nome = $_POST['nome'];
$celular = $_POST['celular'];
$email = $_POST['email'];

/* altere aqui as perguntas do forms*/
$pergunta1 = $_POST['pergunta1'];
$pergunta2 = $_POST['pergunta2'];
$pergunta3 = $_POST['pergunta3'];
$pergunta4 = $_POST['pergunta4'];
$pergunta5 = $_POST['pergunta5'];


// camada de conexão
include_once("conexao.php");

/* aqui são as variaveis das novas perguntas */
$sql = "INSERT INTO dados VALUES ";
$sql .= "('$nome','$celular','$email','$pergunta1','$pergunta2','$pergunta3','$pergunta4','$pergunta5')";
 
/* aqui conexão com o banco*/
mysqli_query($conexao,$sql) or die("Erro ao tentar cadastrar registro");
mysqli_close($conexao);
echo "Aviso cadastrado com sucesso!";