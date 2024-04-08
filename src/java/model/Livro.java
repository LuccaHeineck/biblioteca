package model;

public class Livro
{
    private int id_livro;
    private String titulo;
    private String autor;
    private int ano_publicacao;
    private String genero;


    public int getId_livro() {
        return id_livro;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public int getAno_publicacao() {
        return ano_publicacao;
    }

    public void setId_livro(int id_livro) {
        this.id_livro = id_livro;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public void setAno_publicacao(int ano_publicacao) {
        this.ano_publicacao = ano_publicacao;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    
    
    
}
