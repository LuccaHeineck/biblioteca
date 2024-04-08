package controller;

import dao.LivroDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import model.Livro;

/**
 *
 * @author Vinicius
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller", "/adicionaLivros", "/adicionaLivrosbd", "/listaLivros", "/home", "/editaLivros", "/editaLivrosbd", "/excluiLivros"})
public class Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String action = request.getServletPath();

        if (action.equals("/adicionaLivros")) {
            response.sendRedirect("ad-livro.jsp");
        }
        if (action.equals("/listaLivros")) {

            List<Livro> lista = LivroDAO.lerTudo();
            request.setAttribute("lista", lista);
            RequestDispatcher dispatcher
                    = request.getRequestDispatcher("li-livro.jsp");
            dispatcher.forward(request, response);

            //response.sendRedirect("li-contatos.jsp");
        }

        if (action.equals("/home")) {
            //response.sendRedirect("li-contatos.jsp");
            response.sendRedirect("index.html");
        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String action = request.getServletPath();
        LivroDAO dao = new LivroDAO();
        Livro livro = new Livro();

        if (action.equals("/adicionaLivrosbd")) {

            livro.setTitulo(request.getParameter("titulo"));
            livro.setAutor(request.getParameter("autor"));
            int ano_publicacao = Integer.parseInt(request.getParameter("ano_publicacao"));
            livro.setAno_publicacao(ano_publicacao);  
            System.out.println("Gênero: " + request.getParameter("genero"));
            livro.setGenero(request.getParameter("genero"));    
            
            if (dao.salvar(livro) == 1) {
                response.sendRedirect("livroaddsucesso.jsp");
            } else {
                response.sendRedirect("livroadderro.jsp");
            }
        }

        if (action.equals("/editaLivros")) {
            log(request.getParameter("id_livro"));
            
            livro = dao.getLivroById(Integer.parseInt(request.getParameter("id_livro")));
            //log("aaaaa: "+ contato.getId());
            if (livro.getId_livro() > 0) {
                request.setAttribute("livro", livro);
                //request.setAttribute("id", contato.getId());
                //request.setAttribute("nome", contato.getNome());
                //request.setAttribute("senha", contato.getSenha());
                //request.setAttribute("email", contato.getEmail());
                //request.setAttribute("sexo", contato.getSexo());
                //request.setAttribute("pais", contato.getPais());

                RequestDispatcher dispatcher
                        = request.getRequestDispatcher("ed-livro.jsp");
                dispatcher.forward(request, response);

            } else {
                response.sendRedirect("li-livro.jsp");
            }
        }

        if (action.equals("/editaLivrosbd")) {

            livro.setId_livro(Integer.parseInt(request.getParameter("id_livro")));
            livro.setTitulo(request.getParameter("titulo"));
            livro.setAutor(request.getParameter("autor"));
            int ano_publicacao = Integer.parseInt(request.getParameter("ano_publicacao"));
            livro.setAno_publicacao(ano_publicacao);  
            livro.setGenero(request.getParameter("genero"));  
            
            if (dao.atualizar(livro) == 1) {
                response.sendRedirect("livroaddsucesso.jsp");
            } else {
                response.sendRedirect("livroadderro.jsp");
            }
        }
        if (action.equals("/excluiLivros")) {
            if (dao.deletar(Integer.parseInt(request.getParameter("id_livro"))) == 1) {
                response.sendRedirect("remlivsucesso.jsp");
            } else {
                response.sendRedirect("remliverro.jsp");
            }

        }
    }

}
