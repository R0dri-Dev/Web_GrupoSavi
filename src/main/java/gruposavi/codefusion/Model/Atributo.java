package gruposavi.codefusion.Model;

public class Atributo {

    private Integer idAtributo;

    private CategoriaColor categoriaColor;

    private Double beta;

    private Double contrabeta;

    private Double espesor;

    public Integer getIdAtributo() {
        return idAtributo;
    }

    public void setIdAtributo(Integer idAtributo) {
        this.idAtributo = idAtributo;
    }

    public CategoriaColor getCategoriaColor() {
        return categoriaColor;
    }

    public void setCategoriaColor(CategoriaColor categoriaColor) {
        this.categoriaColor = categoriaColor;
    }

    public Double getBeta() {
        return beta;
    }

    public void setBeta(Double beta) {
        this.beta = beta;
    }

    public Double getContrabeta() {
        return contrabeta;
    }

    public void setContrabeta(Double contrabeta) {
        this.contrabeta = contrabeta;
    }

    public Double getEspesor() {
        return espesor;
    }

    public void setEspesor(Double espesor) {
        this.espesor = espesor;
    }
}