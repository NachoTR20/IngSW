package ormExpressCorreos.model;

import javax.persistence.*;
import java.util.Set;

// @TODO completar las anotaciones de la clase
@Entity
@Table(name = "UsuarioReal")
public class UsuarioIdentificado {
    
    // @TODO completar las anotaciones de todos los atributos
    @Id
    @Column(name = "DNI")
    private String DNI;

    @Column(name = "email")
    private String email;

    @OneToOne(optional = false)
    @JoinColumn(name = "CodU")
    private UsuarioGenerico usuario;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="usuarioIdentificado_autorizado")
    private UsuarioIdentificado usuarioIdentificado_autorizado;

    @OneToMany(mappedBy = "usuarioIdentificado_autorizado")
    private Set<UsuarioIdentificado> usuariosAutorizados;

    public UsuarioIdentificado() {
    }

    public UsuarioIdentificado(String DNI, String email, UsuarioGenerico usuario, UsuarioIdentificado usuarioIdentificado_autorizado) {  // @TODO: completar
        // @TODO completar el constructor de la clase.
        //  Para ello son necesarios strings con el DNI, el nombre, los apellidos y el email del usuario
        //  Cree e inicialice el resto de atributos a los valores que considere oportunos

        this.DNI = DNI;
        this.email = email;
        this.usuario = usuario;
        this.usuarioIdentificado_autorizado = usuarioIdentificado_autorizado;
    }

    public String getDNI() {
        return this.DNI;
    }

    public String getEmail() {
        return this.email;
    }

    public UsuarioGenerico getUsuario() {
        return usuario;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUsuario(UsuarioGenerico usuario) {
        this.usuario = usuario;
    }

    public UsuarioIdentificado getUsuarioIdentificado_autorizado() {
        return usuarioIdentificado_autorizado;
    }

    public void setUsuarioIdentificado_autorizado(UsuarioIdentificado usuarioIdentificado_autorizado) {
        this.usuarioIdentificado_autorizado = usuarioIdentificado_autorizado;
    }
}
