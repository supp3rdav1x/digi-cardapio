<?php
// Criando tabela e cabeçalho de dados:
echo "<table border=1>";
echo "<tr>";

//echo "<th>iduser</th>";
echo "<th>Nome</th>";
echo "<th>Celular</th>";
echo "<th>Email</th>";
echo "<th>Funcionarios</th>";
echo "<th>Comida</th>";
echo "<th>Pedir</th>";
echo "<th>Pedido</th>";
echo "<th>Ambiente</th>";

//echo "<th>resposta</th>";
echo "</tr>";

// Conectando ao banco de dados:
$strcon = mysqli_connect('localhost', 'root', '', 'SatCli') or die('Erro ao conectar ao servidor');

//realiza a intrução sql
$sql = "select * from dados";
$resultado = mysqli_query($strcon, $sql) or die("Erro ao retornar dados");

// Obtendo os dados por meio de um loop while
while ($registro = mysqli_fetch_array($resultado)) {
	//$iduser = $registro['iduser'];
	$nome = $registro['nome'];
	$tel = $registro['celular'];
	$email = $registro['email'];
	$chec1 = $registro['pergunta1'];
	$chec2 = $registro['pergunta2'];
	$chec3 = $registro['pergunta3'];
	$chec4 = $registro['pergunta4'];
	$chec5 = $registro['pergunta5'];

	echo "<tr>";
	//echo "<td>".$iduser."</td>";
	echo "<td>" . $nome . "</td>";
	echo "<td>" . $tel . "</td>";
	echo "<td>" . $email . "</td>";
	echo "<td>" . $chec1 . "</td>";
	echo "<td>" . $chec2 . "</td>";
	echo "<td>" . $chec3 . "</td>";
	echo "<td>" . $chec4 . "</td>";
	echo "<td>" . $chec5 . "</td>";

	//echo "<td>".$senha."</td>";
	echo "</tr>";
}
mysqli_close($strcon);
echo "</table>";
?>