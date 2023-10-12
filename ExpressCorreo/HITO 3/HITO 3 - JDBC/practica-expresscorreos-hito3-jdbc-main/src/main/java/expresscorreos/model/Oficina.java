package expresscorreos.model;

public class Oficina {

    private String CodO;
    private Municipio municipio;

    public Oficina(String codO, Municipio municipio) {
        CodO = codO;
        this.municipio = municipio;
    }

    public String getCodO() {
        return CodO;
    }

    public Municipio getMunicipio() {
        return municipio;
    }
}
