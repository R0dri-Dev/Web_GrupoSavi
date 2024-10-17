package gruposavi.codefusion.Dao;

import gruposavi.codefusion.Model.Usuario;
import gruposavi.codefusion.Util.Conexion;
import org.mindrot.jbcrypt.BCrypt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UsuarioDAO {
    public Usuario authenticate(String username, String password) {
        Usuario usuario = null;
        String sql = "SELECT * FROM usuario WHERE nombre_usuario = ?";

        try (Connection conn = Conexion.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, username);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String storedPassword = rs.getString("contrasenia");
                    // Comparar directamente la contraseña almacenada con la ingresada
                    if (password.equals(storedPassword)) {
                        System.out.println("Autenticación exitosa para el usuario: " + username);
                        usuario = new Usuario();
                        usuario.setIdUsuario(rs.getInt("idUsuario"));
                        usuario.setNombreUsuario(rs.getString("nombre_usuario"));
                        usuario.setContrasenia(storedPassword);
                    } else {
                        System.out.println("Autenticación fallida para el usuario: " + username);
                    }

                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }


}