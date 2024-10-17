package gruposavi.codefusion.Model;

import java.util.List;

public class Rol {

    private Integer idRol;

    private Usuario usuario;

    private String nombreRol;

    private String descripcionRol;

    private List<RolPermiso> rolesPermisos;

    public Integer getIdRol() {
        return idRol;
    }

    public void setIdRol(Integer idRol) {
        this.idRol = idRol;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getDescripcionRol() {
        return descripcionRol;
    }

    public void setDescripcionRol(String descripcionRol) {
        this.descripcionRol = descripcionRol;
    }

    public String getNombreRol() {
        return nombreRol;
    }

    public void setNombreRol(String nombreRol) {
        this.nombreRol = nombreRol;
    }

    public List<RolPermiso> getRolesPermisos() {
        return rolesPermisos;
    }

    public void setRolesPermisos(List<RolPermiso> rolesPermisos) {
        this.rolesPermisos = rolesPermisos;
    }
}