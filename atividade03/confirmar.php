<?php
// confirmar.php
$id_veiculo = $_GET['cod'];
echo "
        <h1> Tem certeza que deseja 
             excluir o item nº $id_veiculo?
        </h1>
        <br><br>
        <a href='deletar.php?cod=$id_veiculo'>
            Sim
        </a>
        <br><br>
        <a href='pagina_gerenciar.php'>
            Não
        </a>

    ";
?>