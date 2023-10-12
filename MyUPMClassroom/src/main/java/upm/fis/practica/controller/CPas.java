package upm.fis.practica.controller;

import servidor.Autenticacion;
import spark.Request;
import spark.Response;
import upm.fis.practica.exceptions.RenderTemplateException;
import upm.fis.practica.model.usuario.Usuario;
import upm.fis.practica.model.usuario.pas.Pas;
import upm.fis.practica.peristencia.PPas;
import upm.fis.practica.view.VelocityRenderer;
import upm.fis.practica.view.ViewRenderer;
import utilidades.Cifrado;

import java.util.List;
import java.util.Map;

public class CPas {
    private List<Pas> listapas;
    private ViewRenderer renderer;
    private Autenticacion autenticacion;
    private PPas Ppas;

    public CPas() {
        this.autenticacion = new Autenticacion();
        this.renderer = new VelocityRenderer();
        this.Ppas = new PPas();
        this.listapas = Ppas.leerdearchivo();
    }

    public String darAltaPas(Request request, Response response) {
        Map<String, Object> model = renderer.toModel(listapas, "usuarios");
        String template = "altapas.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }

    public String guardarpas(Request request, Response response) {
        String nombre = request.queryParams("nombre");
        String apellidos = request.queryParams("apellidos");
        String correo = request.queryParams("correo");
        boolean autentica = autenticacion.existeCuentaUPM(correo);
        String contrasenya = request.queryParams("contrasenya");
        String cifrado = Cifrado.cifrar(contrasenya);
        String dni = request.queryParams("dni");
        String codigopersonal = request.queryParams("codigopersonal");
        int anio = Integer.parseInt(request.queryParams("anio"));
        Map<String, Object> model;
        String template;
        if (autentica && dni.length()==9) {
            Pas pas = new Pas(nombre, apellidos, correo, cifrado, dni, codigopersonal, anio);
            listapas.add(pas);
            Ppas.pasarJsonlistaPas(listapas);
            model = renderer.toModel(listapas, "usuarios");
            template = "guardarpas.vm";
        } else {
            model = renderer.toModel(listapas, "usuarios");
            template = "noautenticado.vm";
        }
        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }


        return "";
    }
    public String listarpas(Request request, Response response){
        Map<String,Object> model = renderer.toModel(listapas, "usuarios");
        String template = "listapas.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }

        return "";
    }

    public String mostrarPas(Request request, Response response) {
        String dni = request.queryParams("dni");
        Map<String, Object> model = renderer.toModel(cogerusuario(dni));
        String template = "pas.vm";
        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }

    public Usuario cogerusuario(String dni) {
        int index = 0;
        for (int i = 0; i < listapas.size(); i++) {
            if (listapas.get(i).getDNI().equals(dni)) {
                index = i;
            }
        }
        return listapas.get(index);
    }

}
