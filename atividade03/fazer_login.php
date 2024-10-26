<?php
include "conexao.php";
$usuario = $_POST['nome'];
$senha = $_POST['senha'];

// 1º Passo - Comando SQL
$sql = "SELECT * FROM tb_usuario
        WHERE nome='$usuario' AND senha='$senha'";
// 2º Passo - Preparar a conexão
$consulta = $pdo->prepare($sql);
// 3º Passo - Tentar executar
try{
    $consulta->execute();
    $resultado = $consulta->fetch(PDO::FETCH_ASSOC);
    $nome_completo = $resultado['nome_completo'];
    if($resultado){
        session_start();
        $_SESSION['logado'] = "sim";
        $_SESSION['nome'] = $nome_completo;
        header("Location: index.php");
    }else{
        header("Location: login.php?erro1=sim");
    }
}catch(PDOException $erro){
    echo "Falha no login! ".$erro->getMessage();
}

?>