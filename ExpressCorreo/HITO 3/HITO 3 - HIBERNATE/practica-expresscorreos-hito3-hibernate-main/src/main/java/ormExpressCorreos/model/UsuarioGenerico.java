package ormExpressCorreos.model;

import javax.persistence.*;

// @TODO completar las anotaciones de la clase
@Entity
@Table(name = "Usuario")
public class UsuarioGenerico {
    
    // @TODO completar las anotaciones de todos los atributos

    @Id
    @GeneratedValue
    @Column(name = "CodU")
    private Long CodU;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "apellidos")
    private String apellidos;

    @ManyToOne
    @JoinColumn(name = "idDireccion")
    private Direccion direccion;

    @OneToOne(mappedBy = "usuario")
    private UsuarioIdentificado usuarioReal;

    public UsuarioGenerico() {
    }

    public UsuarioGenerico (String nombre, String apellidos, Direccion direccion) {  // @TODO: completar
        // @TODO completar el constructor de la clase.
        //  Para ello es necesario un "long"" con la ID, un string con el nombre del usuario y otro string con el apellido
        //  Cree e inicialice el resto de atributos a los valores que considere oportunos

        this.nombre = nombre;
        this.apellidos = apellidos;
        this.direccion = direccion;
    }

    public Long getId(){
        return this.CodU;
    }

    public String getNombre() {
        return this.nombre;
    }

    public String getApellidos() {
        return this.apellidos;
    }

    public Long getCodU() {
        return CodU;
    }

    public Direccion getDireccion() {
        return direccion;
    }

    public UsuarioIdentificado getUsuarioReal() {
        return usuarioReal;
    }

    public void setCodU(Long codU) {
        CodU = codU;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setDireccion(Direccion direccion) {
        this.direccion = direccion;
    }

    public void setUsuarioReal(UsuarioIdentificado usuarioReal) {
        this.usuarioReal = usuarioReal;
    }
}
