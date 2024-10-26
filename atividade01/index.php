<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Cadastro de livro</h1>
<form action="inserir.php" method="post">
    <label> Titulo: </label> <br>
    <input type="text" name="titulo_digitado"> <br><br>

    <label> Autor: </label> <br><br>
    <input type="text" step="0.01" name="autor_digitado"> <br><br>

    <label> Ano publicado: </label> <br>
    <input type="number" name="ano_digitado"> <br><br>

    <label> categoria </label> <br>
    <input type="text"  name="categoria_digitado"><br><br>

    <button type="submit"> Cadastrar </button>
</form>
    
</body>
</html>

