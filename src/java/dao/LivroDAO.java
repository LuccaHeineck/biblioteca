package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;
import model.Livro;

public class LivroDAO {

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("org.sqlite.JDBC");
            con = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\lucca\\OneDrive\\Documentos\\Lucca\\Aulas\\Semestre 3\\Aplicações para a web\\aula 4\\biblioteca\\database.db");
      
        } catch (Exception e) {
            System.out.println(e);

        }
        return con;
    }

    public static int salvar(Livro l) {
        int status = 0;
        try {

            Connection con = getConnection();
            Statement ps = con.createStatement();
            status=ps.executeUpdate("insert into livro(titulo,autor,ano_publicacao,genero) values('" + l.getTitulo() + "','" + l.getAutor()+ "','" + l.getAno_publicacao() + "','" + l.getGenero() + "')");
            
        } catch (Exception e) {

            System.out.println(e);

        }
        return status;
    }

    public static int atualizar(Livro l) {
        int status = 0;
        try {
            Connection con = getConnection();
            Statement ps = con.createStatement();
             status=ps.executeUpdate("update livro set titulo='" + l.getTitulo() + "',autor='" + l.getAutor() + "',ano_publicacao='" + l.getAno_publicacao() + "',genero='" + l.getGenero() + "' where id_livro=" + l.getId_livro());

        } catch (Exception e) {
            System.out.println(e);
        }
        return status;
    }

    public static int deletar(int id_livro) {
        int status = 0;
        try {
            Connection con = getConnection();
            Statement ps = con.createStatement();
            status= ps.executeUpdate("delete from livro where id_livro=" + id_livro);

        } catch (Exception e) {
            System.out.println(e);
        }
        System.out.println("STATUS  " + status);
        return status;
    }

    public static List<Livro> lerTudo() {
        List<Livro> list = new ArrayList<Livro>();

        try {
            Connection con = getConnection();
            Statement ps = con.createStatement();

            ResultSet rs = ps.executeQuery("select * from livro");
            while (rs.next()) {
                Livro l = new Livro();
                l.setId_livro(rs.getInt("id_livro"));
                l.setTitulo(rs.getString("titulo"));
                l.setAutor(rs.getString("autor"));
                l.setAno_publicacao(rs.getInt("ano_publicacao"));
                l.setGenero(rs.getString("genero"));
                list.add(l);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }

    public static Livro getLivroById(int id_livro) {
        Livro l = null;
        try {
            Connection con = getConnection();
            Statement ps = con.createStatement();

            ResultSet rs = ps.executeQuery("select * from livro where id_livro ="+id_livro);
            
            while (rs.next()) 
            {
                l = new Livro();
                l.setId_livro(rs.getInt("id_livro"));
                l.setTitulo(rs.getString("titulo"));
                l.setAutor(rs.getString("autor"));
                l.setAno_publicacao(rs.getInt("ano_publicacao"));
                l.setGenero(rs.getString("genero"));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return l;
    }
}
