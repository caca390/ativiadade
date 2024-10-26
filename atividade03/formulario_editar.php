<!-- formulario_editar.php -->
 <?php
include "verificar_logado.php";
include "conexao.php";
$codigo = $_GET['cod'];

// 1º Passo - Comando SQL
$sql = "SELECT * FROM tb_veiculos WHERE id_veiculo='$codigo'";

// 2º Passo - Preparar a conexão
$consultar = $pdo->prepare($sql);

// 3º Passo - Tentar executar
try{
    $consultar->execute();
    $resultado = $consultar->fetch(PDO::FETCH_ASSOC);
    $modelo = $resultado['modelo'];
    $preco = $resultado['preco'];
    $placa = $resultado['placa'];
    $ano = $resultado['ano'];
}catch(PDOException $erro){
    echo "Falha ao consultar!".$erro->getMessage();
}
?>

<h1>Atualizar inventário</h1> <br>
<form action="atualizar.php" method="post">
    <input type="text" name="codigo" 
    value='<?php echo $codigo;?>' hidden> 

    <label>Nome do veiculo:</label><br>
    <input type="text" name="modelo"
    value='<?php echo $modelo;?>'> <br><br>

    <label>placa:</label><br>
    <input type="text"
    name="placa" value='<?php echo $placa;?>'> <br><br>

    <label>ano:</label><br>
    <input type="text"
    name="ano" value='<?php echo $ano;?>'> <br><br>

    <label>Preço:</label><br>
    <input type="number" step="0.01"
    name="preco" value='<?php echo $preco;?>'> <br><br>

    <button type="submit">Salvar alterações</button>
</form>