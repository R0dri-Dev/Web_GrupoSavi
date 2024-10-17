package gruposavi.codefusion.Model;

import gruposavi.codefusion.Model.Enumeraciones.NombrePermiso;

import java.util.List;

public class Permiso {

    private Integer idPermiso;

    private NombrePermiso nombrePermiso;

    private String descripcionPermiso;

    private List<RolPermiso> rolesPermisos;

    public Integer getIdPermiso() {
        return idPermiso;
    }

    public void setIdPermiso(Integer idPermiso) {
        this.idPermiso = idPermiso;
    }

    public String getDescripcionPermiso() {
        return descripcionPermiso;
    }

    public void setDescripcionPermiso(String descripcionPermiso) {
        this.descripcionPermiso = descripcionPermiso;
    }

    public NombrePermiso getNombrePermiso() {
        return nombrePermiso;
    }

    public void setNombrePermiso(NombrePermiso nombrePermiso) {
        this.nombrePermiso = nombrePermiso;
    }

    public List<RolPermiso> getRolesPermisos() {
        return rolesPermisos;
    }

    public void setRolesPermisos(List<RolPermiso> rolesPermisos) {
        this.rolesPermisos = rolesPermisos;
    }
}