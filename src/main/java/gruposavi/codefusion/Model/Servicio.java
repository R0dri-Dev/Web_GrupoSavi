package gruposavi.codefusion.Model;

import gruposavi.codefusion.Model.Enumeraciones.EstadoServicio;

import java.math.BigDecimal;
import java.util.List;

public class Servicio {
    private Integer idServicio;

    private String nombreServicio;

    private String tipoServicio;

    private String descripcion;

    private BigDecimal precio;

    private Integer duracion;

    private EstadoServicio estadoServicio;

    private List<DetalleServicio> detallesServicio;

    public Integer getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(Integer idServicio) {
        this.idServicio = idServicio;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }

    public String getTipoServicio() {
        return tipoServicio;
    }

    public void setTipoServicio(String tipoServicio) {
        this.tipoServicio = tipoServicio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public Integer getDuracion() {
        return duracion;
    }

    public void setDuracion(Integer duracion) {
        this.duracion = duracion;
    }

    public EstadoServicio getEstadoServicio() {
        return estadoServicio;
    }

    public void setEstadoServicio(EstadoServicio estadoServicio) {
        this.estadoServicio = estadoServicio;
    }

    public List<DetalleServicio> getDetallesServicio() {
        return detallesServicio;
    }

    public void setDetallesServicio(List<DetalleServicio> detallesServicio) {
        this.detallesServicio = detallesServicio;
    }
}