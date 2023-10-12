package upm.fis.practica.controller;

import servidor.Autenticacion;
import spark.Request;
import spark.Response;
import upm.fis.practica.exceptions.RenderTemplateException;
import upm.fis.practica.model.aula.Aula;
import upm.fis.practica.model.usuario.Usuario;
import upm.fis.practica.model.usuario.observador.alumno.Alumno;
import upm.fis.practica.peristencia.PAlumno;
import upm.fis.practica.view.VelocityRenderer;
import upm.fis.practica.view.ViewRenderer;
import utilidades.Cifrado;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CAlumno {
    private List<Alumno> alumnos;
    private ViewRenderer renderer;
    private PAlumno pAlumno;
    private Alumno alumno;

    public CAlumno(){
        this.pAlumno = new PAlumno();
        this.renderer = new VelocityRenderer();
        this.alumnos = pAlumno.leerdearchivo();
    }

    public String darAltaAlumno(Request request, Response response){
        Map<String,Object> model = renderer.toModel(alumnos,"alumno");
        String template = "altaalumno.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }
    public String guardaralumno(Request request, Response response) {

        String nombre = request.queryParams("nombre");
        String apellidos = request.queryParams("apellidos");
        String correo = request.queryParams("correo");
        String contrasenya = request.queryParams("contrasenya");
        String cifrado= Cifrado.cifrar(contrasenya);
        String dni = request.queryParams("dni");
        String nummatricula = request.queryParams("nummatricula");
        Map<String, Object> model;
        String template;
        //autentica si el mail es @upm.es o @alumnos.upm.es
        try{
            Alumno alumno = new Alumno(nombre,apellidos,correo,cifrado,dni,nummatricula);
            if(alumno!=null){
                alumnos.add(alumno);
                pAlumno.pasarJsonlistaAlumno(alumnos);
                model = renderer.toModel(alumnos, "usuarios");
                template = "guardaralumno.vm";

                try {
                    return renderer.render(model, template);
                } catch (RenderTemplateException e) {
                    e.printStackTrace();
                }
            }
        } catch(Exception e){
            e.printStackTrace();
            model = renderer.toModel(alumnos, "usuarios");
            template = "noautenticado.vm";
            try {
                return renderer.render(model, template);
            } catch (RenderTemplateException e2) {
                e2.printStackTrace();
            }
        }

        return "";
    }
    public String listarAlumnos(Request request, Response response){
        Map<String,Object> model = renderer.toModel(alumnos, "usuarios");
        String template = "alumnos.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }

        return "";
    }
    public String listarAlumnoSuscribir(Request request, Response response){
        Map<String,Object> model = renderer.toModel(pAlumno.leerdearchivo(), "observadores");
        String template = "observadoresalumno.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }

        return "";
    }
    public String mostrarAlumno(Request request, Response response){
        String dni = request.queryParams("dni");
        Map<String,Object> model = renderer.toModel(cogerusuario(dni));
        String template = "alumno.vm";
        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }
    public String suscibrirAlumno (Request request, Response response, List<Aula> aulas){
        String dni = request.queryParams("dni");
        alumno = cogeroalumno(dni);
        Map<String,Object> model = renderer.toModel(aulas,"aulas");
        String template = "suscribiralumno.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }
    public Usuario cogerusuario(String dni){
        int index=0;
        for(int i=0;i<alumnos.size();i++){
            if(alumnos.get(i).getDNI().equals(dni)){
                index = i;
            }
        }
        return alumnos.get(index);
    }
    public Alumno cogeroalumno(String dni){
        int index=0;
        for(int i=0;i<pAlumno.leerdearchivo().size();i++){
            if(pAlumno.leerdearchivo().get(i).getDNI().equals(dni)){

                index = i;
            }
        }
        return pAlumno.leerdearchivo().get(index);
    }

    public Alumno getAlumno() {
        return alumno;
    }
}
