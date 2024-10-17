package gruposavi.codefusion.Model.Auditoria;

import java.util.Date;

public class Auditoria {
    private Date fecha_error;
    private String usuario;
    private String componente;
    private String accion;
    private String descripcion;
    private String datos;

    public Auditoria() {
    }

    public Auditoria(Date fecha_error, String usuario, String componente, String accion, String descripcion, String datos) {
        this.fecha_error = fecha_error;
        this.usuario = usuario;
        this.componente = componente;
        this.accion = accion;
        this.descripcion = descripcion;
        this.datos = datos;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public Date getFecha_error() {
        return fecha_error;
    }

    public void setFecha_error(Date fecha_error) {
        this.fecha_error = fecha_error;
    }

    public String getComponente() {
        return componente;
    }

    public void setComponente(String componente) {
        this.componente = componente;
    }

    public String getAccion() {
        return accion;
    }

    public void setAccion(String accion) {
        this.accion = accion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDatos() {
        return datos;
    }

    public void setDatos(String datos) {
        this.datos = datos;
    }
}
