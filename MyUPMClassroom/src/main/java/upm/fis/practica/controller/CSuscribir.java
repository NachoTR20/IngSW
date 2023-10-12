package upm.fis.practica.controller;

import spark.Request;
import spark.Response;
import upm.fis.practica.exceptions.RenderTemplateException;
import upm.fis.practica.model.aula.Aula;
import upm.fis.practica.view.VelocityRenderer;
import upm.fis.practica.view.ViewRenderer;

import java.util.Map;

public class CSuscribir {
    private ViewRenderer renderer;
    private CAulas cAulas;
    private CAlumno cAlumno;
    private CPdi cPdi;


    public CSuscribir(){
        this.cAulas = new CAulas();
        this.cAlumno= new CAlumno();
        this.cPdi = new CPdi();
        this.renderer = new VelocityRenderer();
    }

    public String elegirobservador(Request request, Response response){
        Map<String, Object> model = renderer.toModel(cAulas.getAulas(),"observadores");
        String template = "suscribirobservador.vm";
        try {
            return renderer.render(model,template);
        }catch (RenderTemplateException e){
            e.printStackTrace();
        }
        return "";
    }


    public String listarAlumno(Request request, Response response){
        return cAlumno.listarAlumnoSuscribir(request,response);
    }
    public String listarPdi(Request request, Response response){
        return cPdi.listarPdisuscribir(request,response);
    }


    public String suscibrirAlumno (Request request, Response response){
        return cAlumno.suscibrirAlumno(request,response,cAulas.getAulas());
    }
    public String suscibrirPdi (Request request, Response response){
        return cPdi.suscibrirPdi(request,response,cAulas.getAulas());
    }


    public String guardaryverAlumno( Request request, Response response){
        return cAulas.guardaryverAlumno(request,response,cAlumno.getAlumno());
    }
    public String guardaryverPdi( Request request, Response response){
        return cAulas.guardaryverPdi(request,response, cPdi.getPdi());
    }

    public String versuscritos( Request request, Response response){
        String id = request.queryParams("id");
        Map<String,Object> model = renderer.toModel(cogeraula(id));
        String template = "suscritos.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }

        return "";
    }
    public Aula cogeraula(String id){
        int index=0;
        for(int i=0;i<cAulas.getAulas().size();i++){
            if(cAulas.getAulas().get(i).getId().equals(id)){
                index = i;
            }
        }
        return cAulas.getAulas().get(index);
    }

}
