package upm.fis.practica.controller;

import servidor.Autenticacion;
import spark.Request;
import spark.Response;
import upm.fis.practica.exceptions.RenderTemplateException;
import upm.fis.practica.model.aula.Aula;
import upm.fis.practica.model.usuario.Usuario;
import upm.fis.practica.model.usuario.observador.pdi.Pdi;
import upm.fis.practica.model.usuario.observador.pdi.TCategoria;
import upm.fis.practica.peristencia.PPdi;
import upm.fis.practica.view.VelocityRenderer;
import upm.fis.practica.view.ViewRenderer;
import utilidades.Cifrado;

import java.util.List;
import java.util.Map;

public class CPdi {
    private List<Pdi> listapdi;
    private ViewRenderer renderer;
    private Autenticacion autenticacion;
    private PPdi Ppdi;
    private Pdi pdi;

    public CPdi() {
        this.autenticacion = new Autenticacion();
        this.renderer = new VelocityRenderer();
        this.Ppdi = new PPdi();
        this.listapdi = Ppdi.leerdearchivo();
    }

    public String darAltaPdi(Request request, Response response) {
        Map<String, Object> model = renderer.toModel(listapdi, "usuarios");
        String template = "altapdi.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }

    public String guardarPdi(Request request, Response response) {
        String nombre = request.queryParams("nombre");
        String apellidos = request.queryParams("apellidos");
        String correo = request.queryParams("correo");
        boolean autentica = autenticacion.existeCuentaUPM(correo);
        String contrasenya = request.queryParams("contrasenya");
        String conCifrado = Cifrado.cifrar(contrasenya);
        String dni = request.queryParams("dni");
        String codigotrabajador = request.queryParams("codigotrabajador");
        TCategoria tCategoria = TCategoria.valueOf(request.queryParams("TCategoria"));

        Map<String, Object> model;
        String template;
        if (autentica && dni.length()==9) {
            Pdi pdi = new Pdi(nombre, apellidos, correo, conCifrado, dni, codigotrabajador, tCategoria);
            listapdi.add(pdi);
            Ppdi.pasarJsonlistaPdi(listapdi);
            model = renderer.toModel(listapdi, "usuarios");
            template = "guardarpdi.vm";
        } else {
            model = renderer.toModel(listapdi, "usuarios");
            template = "noautenticado.vm";
        }
        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }


        return "";
    }

    public String listarpdis(Request request, Response response) {
        Map<String, Object> model = renderer.toModel(listapdi, "usuarios");
        String template = "listapdi.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }

        return "";
    }
    public String listarPdisuscribir(Request request, Response response){
        Map<String,Object> model = renderer.toModel(Ppdi.leerdearchivo(), "observadores");
        String template = "observadorespdi.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }

        return "";
    }
    public String suscibrirPdi (Request request, Response response, List<Aula> aulas){
        String dni = request.queryParams("dni");
        pdi = cogerpdi(dni);
        Map<String,Object> model = renderer.toModel(aulas,"aulas");
        String template = "suscribirpdi.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }

    public String moostrarPdi(Request request, Response response) {
        String dni = request.queryParams("dni");
        Map<String, Object> model = renderer.toModel(cogerusuario(dni));
        String template = "pdi.vm";
        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }

    public Usuario cogerusuario(String dni) {
        int index = 0;
        for (int i = 0; i < listapdi.size(); i++) {
            if (listapdi.get(i).getDNI().equals(dni)) {
                index = i;
            }
        }
        return listapdi.get(index);
    }
    public Pdi cogerpdi(String dni){
        int index=0;
        for(int i=0;i<Ppdi.leerdearchivo().size();i++){
            if(Ppdi.leerdearchivo().get(i).getDNI().equals(dni)){

                index = i;
            }
        }
        return Ppdi.leerdearchivo().get(index);
    }


    public Pdi getPdi() {
        return pdi;
    }
}
