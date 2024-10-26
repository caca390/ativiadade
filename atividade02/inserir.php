<?php
//Cadastrar.php
include "conexao.php";

$nome =  $_POST['nome'];
$data_nascimento = $_POST['data_nascimento'];
$salario = $_POST['salario'];
$sexo = $_POST['sexo']; 
$cargo = $_POST ['cargo'];

$sql = "INSERT INTO tb_cargos
        (nome, data_nascimento, salario, sexo, cargo)
        VALUES
        ('$nome', '$data_nascimento', '$salario', '$sexo', '$cargo')";
$inserir=$pdo->prepare($sql);
try{
    $inserir->execute();
    echo "Cadastrado com sucesso!";

}catch(PDOException $erro){
    echo "Falha ao inserir!". $erro->getMessage();
}

?>