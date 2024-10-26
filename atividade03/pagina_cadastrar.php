<?php    include "verificar_logado.php";  ?>
<!-- pagina_cadastrar.php -->
<h1>Cadastrar veiculo</h1>
<br>
<form action="cadastrar.php" method="post">
    <label>modelo:</label><br>
    <input type="text" name="modelo"> <br><br>

    <label>Placa:</label><br>
    <input type="text" step="0.01" name="placa"> <br><br>

    <label>ano:</label><br>
    <input type="number" name="ano"> <br><br>

    <label>preço:</label><br>
    <input type="nunber" name="preco"> <br><br>

    <button type="submit">Cadastrar</button>

    
    


</form>