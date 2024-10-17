package gruposavi.codefusion.Model;

public class DetallePedido {

    private DetallePedidoId id;
    private Pedido pedido;
    private Producto producto;
    private Atributo atributo;
    private Integer cantidadPedida;

    public DetallePedidoId getId() {
        return id;
    }

    public void setId(DetallePedidoId id) {
        this.id = id;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public Atributo getAtributo() {
        return atributo;
    }

    public void setAtributo(Atributo atributo) {
        this.atributo = atributo;
    }

    public Integer getCantidadPedida() {
        return cantidadPedida;
    }

    public void setCantidadPedida(Integer cantidadPedida) {
        this.cantidadPedida = cantidadPedida;
    }
}