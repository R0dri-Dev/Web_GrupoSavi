package gruposavi.codefusion.Model;

import gruposavi.codefusion.Model.Enumeraciones.EstadoPago;
import gruposavi.codefusion.Model.Enumeraciones.MetodoPago;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Pago {

    private Integer idPago;

    private Pedido pedido;

    private LocalDate fechaPago;

    private MetodoPago metodoPago;

    private BigDecimal montoPago;

    private EstadoPago estadoPago;

    public Integer getIdPago() {
        return idPago;
    }

    public void setIdPago(Integer idPago) {
        this.idPago = idPago;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public LocalDate getFechaPago() {
        return fechaPago;
    }

    public void setFechaPago(LocalDate fechaPago) {
        this.fechaPago = fechaPago;
    }

    public MetodoPago getMetodoPago() {
        return metodoPago;
    }

    public void setMetodoPago(MetodoPago metodoPago) {
        this.metodoPago = metodoPago;
    }

    public BigDecimal getMontoPago() {
        return montoPago;
    }

    public void setMontoPago(BigDecimal montoPago) {
        this.montoPago = montoPago;
    }

    public EstadoPago getEstadoPago() {
        return estadoPago;
    }

    public void setEstadoPago(EstadoPago estadoPago) {
        this.estadoPago = estadoPago;
    }
}