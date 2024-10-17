package gruposavi.codefusion.Controller;

import gruposavi.codefusion.Dao.UsuarioDAO;
import gruposavi.codefusion.Model.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import static com.google.common.base.Preconditions.checkNotNull;

@WebServlet("/sistemaGestion")
public class UsuarioServlet extends HttpServlet {
    private UsuarioDAO usuarioDAO = new UsuarioDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Usuario usuario = usuarioDAO.authenticate(username, password);
        checkNotNull(usuario, "El usuario no existe o esta vacio");
        if (usuario != null) {
            request.getSession().setAttribute("usuario", username);
            response.sendRedirect(request.getContextPath() + "/Pages/dashboard.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/Pages/sistemaGestion.jsp?error=true");
        }
    }
}
