document.addEventListener("DOMContentLoaded", function() 
{
    var submitButton = document.getElementById('submitButton');
    submitButton.addEventListener('click', function(event) 
    {
        var tituloInput = document.querySelector('.input__titulo');
        var autorInput = document.querySelector('.input__autor');
        var anoInput = document.querySelector('.input__ano');
        var tituloError = document.getElementById('tituloError');
        var autorError = document.getElementById('autorError');
        var anoError = document.getElementById('anoError');
        var titulo = tituloInput.value;
        var autor = autorInput.value;
        var ano = anoInput.value;

        tituloError.textContent = '';
        autorError.textContent = '';
        anoError.textContent = '';

        if (titulo.trim() === "") 
        {
            event.preventDefault();
            tituloError.textContent = 'Título não pode estar em branco';
        }

        if (autor.trim() === "") 
        {
            event.preventDefault();
            autorError.textContent = 'Autor não pode estar em branco';
        }

        if (ano.trim() === "")  //Considerar ano negativo como AC
        {
            event.preventDefault();
            anoError.textContent = 'Ano de publicação não pode estar em branco'; 
        }

        if (titulo.trim() !== "" && autor.trim() !== "" && ano.trim() !== "") 
        {
            // Se todos os campos estiverem preenchidos, envie o formulário
            document.getElementById("formularioLivro").submit();
        }
    });
});
