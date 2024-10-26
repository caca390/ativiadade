<?php
// atualizar.php
include "verificar_logado.php";
include "conexao.php";
$codigo = $_POST['codigo'];
$preco = $_POST['preco'];
$ano = $_POST['ano'];
$modelo = $_POST['modelo'];
$placa = $_POST['placa'];

// 1º Passo - Comando SQL
$sql = "UPDATE tb_veiculos SET 
        modelo='$modelo', preco='$preco',
        ano='$ano', placa='$placa'
         WHERE id_veiculo='$codigo'";
// 2º Passo - Preparar a conexão
$atualizar = $pdo->prepare($sql);
// 3º Passo - Tentar executar
try{
    $atualizar->execute();
    if($atualizar->rowCount()>=1){
        echo "Atualizado com sucesso!";
    }else{
        echo "Falha ao atualizar!";
    }    
}catch(PDOException $erro){
    echo "Falha ao atualizar!".$erro->getMessage();
}

?>