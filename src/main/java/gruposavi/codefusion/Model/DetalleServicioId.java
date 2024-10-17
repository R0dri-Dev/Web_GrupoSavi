package gruposavi.codefusion.Model;

public class DetalleServicioId {
    private Integer idPedido;
    private Integer idServicio;

    public DetalleServicioId(Integer idPedido, Integer idServicio) {
        this.idPedido = idPedido;
        this.idServicio = idServicio;
    }

    public Integer getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(Integer idPedido) {
        this.idPedido = idPedido;
    }

    public Integer getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(Integer idServicio) {
        this.idServicio = idServicio;
    }
}