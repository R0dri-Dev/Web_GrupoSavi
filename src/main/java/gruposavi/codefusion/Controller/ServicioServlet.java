package gruposavi.codefusion.Controller;

import gruposavi.codefusion.Dao.ServicioDAO;
import gruposavi.codefusion.Model.Enumeraciones.ESTADO;
import gruposavi.codefusion.Model.Enumeraciones.Tiposervicio;
import gruposavi.codefusion.Model.Servicio;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/Servicio",urlPatterns = "/Servicio")
public class ServicioServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}