import gruposavi.codefusion.Dao.UsuarioDAO;
import gruposavi.codefusion.Util.Conexion;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestConexion {

    @Test
    public void testConexion() {
        Connection conn = null;
        try {
            conn = Conexion.getConnection();
            if (conn != null) {
                System.out.println("Conexión exitosa");
            } else {
                System.out.println("No se pudo conectar a la base de datos");
            }
        } catch (SQLException e) {
            System.out.println("Error al conectar a la base de datos");
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println("Error al cerrar la conexión");
                    e.printStackTrace();
                }
            }
        }
    }
    
    @Test
    public void testAutenticacion() {
        String username = "admin";
        String password = "123456";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM usuario WHERE nombre_usuario = ? AND contrasenia = ?")) {

            ps.setString(1, username);
            ps.setString(2, password);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    System.out.println("Usuario encontrado!");
                } else {
                    System.out.println("Usuario no encontrado!");
                }
            }
        } catch (SQLException e) {
            System.out.println("Error al conectar: " + e.getMessage());
        }
    }
}