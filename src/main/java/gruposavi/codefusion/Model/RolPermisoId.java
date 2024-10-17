package gruposavi.codefusion.Model;

public class RolPermisoId {
    private Integer idRol;
    private Integer idPermiso;

    public RolPermisoId() {}

    public RolPermisoId(Integer idRol, Integer idPermiso) {
        this.idRol = idRol;
        this.idPermiso = idPermiso;
    }

    public Integer getIdRol() {
        return idRol;
    }

    public void setIdRol(Integer idRol) {
        this.idRol = idRol;
    }

    public Integer getIdPermiso() {
        return idPermiso;
    }

    public void setIdPermiso(Integer idPermiso) {
        this.idPermiso = idPermiso;
    }
}