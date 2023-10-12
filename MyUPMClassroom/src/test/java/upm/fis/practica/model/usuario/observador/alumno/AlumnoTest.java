package upm.fis.practica.model.usuario.observador.alumno;

import junit.framework.TestCase;
import org.junit.Test;

public class AlumnoTest extends TestCase {

    @Test
    public void testCp1() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "Perez", "A.perez@upm.es", "1231231234", "12345678A", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNotNull(alumno);
    }

    @Test
    public void testCp2() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("", "Perez", "A.perez@upm.es", "1231231234", "12345678A", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp3() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("En un lugar de la mancha cuyo nombre no quiero acordarme...", "Perez", "A.perez@upm.es", "1231231234", "12345678A", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp4() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "", "A.perez@upm.es", "1231231234", "12345678A", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp5() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "Me gusta el pollo frito, no puedo parar de comerlo, los pingüinos de Madagascar es la mejor pelicula de la historia", "A.perez@upm.es", "1231231234", "12345678A", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp6() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "Perez", "A.perez@gmail.com", "1231231234", "12345678A", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp7() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "Perez", "A.perez@upm.es", "123", "12345678A", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp8() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "Perez", "A.perez@upm.es", "1231231234", "1", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp9() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "Perez", "A.perez@upm.es", "1231231234", "123456789P", "br1234");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp10() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "Perez", "A.perez@upm.es", "1231231234", "12345678A", "1");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    @Test
    public void testCp11() {
        Alumno alumno = null;
        try {
            alumno = new Alumno("Alfonso", "Perez", "A.perez@upm.es", "1231231234", "12345678A", "br123456");
        }catch (Exception e){
            e.printStackTrace();
        }
        assertNull(alumno);
    }

    


  
}