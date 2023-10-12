package upm.fis.practica.controller;


import spark.Request;
import spark.Response;
import upm.fis.practica.exceptions.RenderTemplateException;
import upm.fis.practica.model.menu.Menu;
import upm.fis.practica.view.VelocityRenderer;
import upm.fis.practica.view.ViewRenderer;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class CMenu {
    private List<Menu> menus;
    private ViewRenderer renderer;

    public CMenu(){
        menus = new ArrayList<>();
        renderer = new VelocityRenderer();
    }
    public String menu (Request request, Response response){
        Map<String,Object> model = renderer.toModel(menus, "aulas");
        String template = "menu.vm";

        try {
            return renderer.render(model, template);
        } catch (RenderTemplateException e) {
            e.printStackTrace();
        }
        return "";
    }
}
