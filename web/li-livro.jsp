<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/table.css">
    <link rel="icon" href="imagens/livro.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="js/scripts.js"></script>
    <script src="js/scripts1.js"></script>
    <title>View Users</title>

</head>
<body>

<div class="content">
    <h1 class="titulo">Lista de Livros</h1>

    <%
        response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
        response.setHeader("Pragma","no-cache"); //HTTP 1.0
        response.setDateHeader ("Expires", 0);
        //prevents caching at the proxy server
    %>

    <img src="imagens/livros.svg"/>
    <table class="livros-table" border="1" width="90%">
        <tr>
            <th>Id</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Ano de publicação</th>
            <th>Gênero</th>
            <th>Editar</th>
            <th>Deletar</th>
        </tr>
        <c:forEach items="${lista}" var="l">
            <tr>
                <td>${l.getId_livro()}</td>
                <td>${l.getTitulo()}</td>
                <td>${l.getAutor()}</td>
                <td>${l.getAno_publicacao()}</td>
                <td>${l.getGenero()}</td>

                <td>
                    <button class="editar" onclick="editar(${l.getId_livro()})">Editar</button>
                </td>

                <td>
                    <button class="apagar" onclick="confirmar(${l.getId_livro()})">Apagar</button>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div class="div__botoes">
        <a class="botoes" href="home">Home</a>
        <a class="botoes" href="adicionaLivros">Adicionar Livros</a>
    </div>
</div>
</body>
</html>
