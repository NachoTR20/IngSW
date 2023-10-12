package ormExpressCorreos;

import ormExpressCorreos.model.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import java.sql.*;

/**
 * Controlador de la aplicación. Por favor, revise detenidamente la clase y complete las partes omitidas
 * atendiendo a los comentarios indicados mediante @TODO
 */
public class Controller {

    private final Session session;

    /**
     * Crea un nuevo controlador
     */
    public Controller () {
        StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
                .configure()
                .build();

        SessionFactory sessionFactory = new MetadataSources(registry)
                .buildMetadata()
                .buildSessionFactory();

        this.session = sessionFactory.openSession();
    }

    public Session getSession() {
        return session;
    }

    /**
     * Crea un nuevo usuario_generico
     * param id id del usuario
     * param nombre nombre del usuario
     * param apellidos apellidos del usuario
     * @return el nuevo usuario creado
     * @throws SQLException
     */

    public UsuarioGenerico createUsuarioGenerico(String nombre, String apellidos, Direccion direccion) throws SQLException{
        // @TODO completa este metodo para crear de forma presistente un usuario genérico

        UsuarioGenerico usuario = new UsuarioGenerico(nombre, apellidos, direccion);

        session.beginTransaction();
        session.save(usuario);
        session.getTransaction().commit();

        return usuario;
    }

    public UsuarioIdentificado createUsuarioIdentificado(String DNI, String email, UsuarioGenerico usuario, UsuarioIdentificado usuarioIdentificado_autorizado) throws SQLException {
        // @TODO completa este metodo para crear de forma presistente un usuario identificado

        UsuarioIdentificado usuarioReal = new UsuarioIdentificado(DNI, email, usuario, usuarioIdentificado_autorizado);

        session.beginTransaction();
        session.save(usuarioReal);
        session.getTransaction().commit();

        return usuarioReal;
    }

    public Direccion createDireccion(Integer numero, Integer piso, String puerta, String portal, Calle calle) throws SQLException {
        // @TODO completa este metodo para crear de forma presistente una direccion

        Direccion direccion = new Direccion(numero, piso, puerta, portal, calle);

        session.beginTransaction();
        session.save(direccion);
        session.getTransaction().commit();

        return direccion;
    }

    public Calle createCalle(String nombre, Municipio municipio) throws SQLException {
        Calle calle = new Calle(nombre, municipio);

        session.beginTransaction();
        session.save(calle);
        session.getTransaction().commit();

        return calle;
    }

    public Municipio createMunicipio(String nombre, Provincia provincia) throws SQLException {
        Municipio municipio = new Municipio(nombre, provincia);

        session.beginTransaction();
        session.save(municipio);
        session.getTransaction().commit();

        return municipio;
    }
 
    public Provincia createProvincia(String nombre) throws SQLException {
        Provincia provincia = new Provincia(nombre);

        session.beginTransaction();
        session.save(provincia);
        session.getTransaction().commit();

        return provincia;
    }
}
