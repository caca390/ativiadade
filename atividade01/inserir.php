<?php
//Cadastrar.php
include "conexao.php";

$titulo =  $_POST['titulo_digitado'];
$autor = $_POST['autor_digitado'];
$ano = $_POST['ano_digitado'];
$categoria = $_POST['categoria_digitado'];

$sql = "INSERT INTO tb_livros
        (titulo, autor, ano_publicacao, categoria)
        VALUES
        ('$titulo', '$autor', '$ano', '$categoria')";
$inserir=$pdo->prepare($sql);
try{
    $inserir->execute();
    echo "Cadastrado com sucesso!";

}catch(PDOException $erro){
    echo "Falha ao inserir!". $erro->getMessage();
}

?>