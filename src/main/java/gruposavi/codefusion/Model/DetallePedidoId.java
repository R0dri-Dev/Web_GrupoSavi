package gruposavi.codefusion.Model;

public class DetallePedidoId {

    private Integer idPedido;
    private Integer idProducto;

    public DetallePedidoId() {

    }

    public DetallePedidoId(Integer idPedido, Integer idProducto) {
        this.idPedido = idPedido;
        this.idProducto = idProducto;
    }

    public Integer getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(Integer idPedido) {
        this.idPedido = idPedido;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }
}