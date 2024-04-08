<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/forms.css">
        <link rel="icon" href="imagens/livro.png">
        <title>Editar Livro</title>
        <script type="text/javascript" src="js/validar.js"></script>
    </head>
    <body>

        <h1 class="titulo">Editar Livro</h1>

        <form class="form" id="formularioLivro" action="editaLivrosbd" method="post">
            <table class="table">
                <input type="hidden" name="id_livro" id="hiddenField" value="${livro.id_livro}"/>
                <input type="hidden" name="id_livro" id="hiddenField" value="${livro.id_livro}"/>
        <tr><td>T�tulo:</td><td><input class="input__titulo" type="text" name="titulo" value="${livro.titulo}"/>
            <span id="tituloError" class="error"></span></td></tr>
        <tr><td>Autor:</td><td><input class="input__autor" type="text" name="autor" value="${livro.autor}"/>
            <span id="autorError" class="error"></span></td></tr>
        <tr><td>Ano de publica��o:</td><td><input class="input__ano" type="number" name="ano_publicacao" value="${livro.ano_publicacao}"/>
            <span id="anoError" class="error"></span></td></tr>

                <tr><td>G�nero:</td><td>
                        <select class="input__genero" name="genero" value="${livro.genero}" style="width:155px">
                            <c:choose>
                                <c:when test="${livro.genero=='Romance'}">
                                <option selected>Romance</option> : 
                                <option>Fantasia</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Mist�rio</option>
                                <option>Suspense</option>
                                <option>Terror</option>
                                <option>Poesia</option>
                                <option>Hist�rico</option>
                                <option>Aventura</option>
                                <option>Did�tico</option>
                                </c:when>  

                                <c:when test="${livro.genero=='Fantasia'}">
                                <option selected>Fantasia</option> : 
                                <option>Romance</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Mist�rio</option>
                                <option>Suspense</option>
                                <option>Terror</option>
                                <option>Poesia</option>
                                <option>Hist�rico</option>
                                <option>Aventura</option>
                                <option>Did�tico</option>
                                </c:when>  

                                <c:when test="${livro.genero=='Fic��o Cient�fica'}">
                                <option selected>Fic��o Cient�fica</option> : 
                                <option>Romance</option>
                                <option>Fantasia</option>
                                <option>Mist�rio</option>
                                <option>Suspense</option>
                                <option>Terror</option>
                                <option>Poesia</option>
                                <option>Hist�rico</option>
                                <option>Aventura</option>
                                <option>Did�tico</option>
                                </c:when>  

                                <c:when test="${livro.genero=='Mist�rio'}">
                                <option selected>Mist�rio</option> : 
                                <option>Romance</option>
                                <option>Fantasia</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Suspense</option>
                                <option>Terror</option>
                                <option>Poesia</option>
                                <option>Hist�rico</option>
                                <option>Aventura</option>
                                <option>Did�tico</option>
                                </c:when>  
                                
                                <c:when test="${livro.genero=='Suspense'}">
                                <option selected>Suspense</option> : 
                                <option>Romance</option>
                                <option>Fantasia</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Mist�rio</option>
                                <option>Terror</option>
                                <option>Poesia</option>
                                <option>Hist�rico</option>
                                <option>Aventura</option>
                                <option>Did�tico</option>
                                </c:when>  

                                <c:when test="${livro.genero=='Terror'}">
                                <option selected>Terror</option> : 
                                <option>Romance</option>
                                <option>Fantasia</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Mist�rio</option>
                                <option>Suspense</option>
                                <option>Poesia</option>
                                <option>Hist�rico</option>
                                <option>Aventura</option>
                                <option>Did�tico</option>
                                </c:when>  

                                <c:when test="${livro.genero=='Poesia'}">
                                <option selected>Poesia</option> : 
                                <option>Romance</option>
                                <option>Fantasia</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Mist�rio</option>
                                <option>Suspense</option>
                                <option>Terror</option>
                                <option>Hist�rico</option>
                                <option>Aventura</option>
                                <option>Did�tico</option>
                                </c:when>  

                                <c:when test="${livro.genero=='Hist�rico'}">
                                <option selected>Hist�rico</option> : 
                                <option>Romance</option>
                                <option>Fantasia</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Mist�rio</option>
                                <option>Suspense</option>
                                <option>Terror</option>
                                <option>Poesia</option>
                                <option>Aventura</option>
                                <option>Did�tico</option>
                                </c:when>  

                                <c:when test="${livro.genero=='Aventura'}">
                                <option selected>Aventura</option> : 
                                <option>Romance</option>
                                <option>Fantasia</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Mist�rio</option>
                                <option>Suspense</option>
                                <option>Terror</option>
                                <option>Poesia</option>
                                <option>Hist�rico</option>
                                <option>Did�tico</option>
                                </c:when>  

                                <c:when test="${livro.genero=='Did�tico'}">
                                <option selected>Did�tico</option> : 
                                <option>Romance</option>
                                <option>Fantasia</option>
                                <option>Fic��o Cient�fica</option>
                                <option>Mist�rio</option>
                                <option>Suspense</option>
                                <option>Terror</option>
                                <option>Poesia</option>
                                <option>Hist�rico</option>
                                <option>Aventura</option>
                                </c:when>

                            </c:choose>
                        </select>
                    </td></tr>
                <tr><td colspan="2"><input class="submit" id="submitButton" type="button" value="Salvar"/></td></tr>
            </table>
            <img class="img__livro" src="imagens/livroadd.svg" alt="">
        </form>

    </body>
</html>

