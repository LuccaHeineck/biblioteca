<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/forms.css">
    <link rel="icon" href="imagens/livro.png">
    <title>Adicionar Novo Livro</title>
    <script type="text/javascript" src="js/validar.js"></script>
</head>
<body>

<%
    response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0);
    //prevents caching at the proxy server
%>
<h1 class="titulo" >Adicionar Novo Livro</h1>
<form class="form" id="formularioLivro" action="adicionaLivrosbd" method="post">
    <table class="table">
        <tr>
            <td>Título</td>
            <td><input class="input__titulo" type="text" name="titulo"/>
                <span id="tituloError" class="error"></span></td>
        </tr>
        <tr>
            <td>Autor</td>
            <td><input class="input__autor" type="text" name="autor"/>
                <span id="autorError" class="error"></span></td>
        </tr>
        <tr>
            <td>Ano de publicação</td>
            <td><input class="input__ano" type="number" name="ano_publicacao"/>
                <span id="anoError" class="error"></span></td>
        </tr>
        
        <tr><td>Gênero</td><td>
            <select name="genero" style="width:155px">
                <option>Romance</option>
                <option>Fantasia</option>
                <option>Ficção Científica</option>
                <option>Fantasia</option>
                <option>Mistério</option>
                <option>Suspense</option>
                <option>Terror</option>
                <option>Poesia</option>
                <option>Histórico</option>
                <option>Aventura</option>
                <option>Didático</option>
            </select>
        </td></tr> 
        <tr><td colspan="2"><button id="submitButton" class="submit" type="button">Adicionar Livro</button></td></tr>
    </table>
    <img class="img__livro" src="imagens/livroadd.svg" alt="">
</form>

</body>
</html>
