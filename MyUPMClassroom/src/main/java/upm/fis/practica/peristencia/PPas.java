package upm.fis.practica.peristencia;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import upm.fis.practica.model.usuario.Usuario;
import upm.fis.practica.model.usuario.observador.pdi.Pdi;
import upm.fis.practica.model.usuario.observador.pdi.TCategoria;
import upm.fis.practica.model.usuario.pas.Pas;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PPas {
    public void pasarJsonlistaPas(List<Pas> pas){

        JSONArray array = new JSONArray();
        for(int i=0;i<pas.size();i++){
            array.add( pasarjsonPas(pas.get(i)));
        }
        fileWriter(array);
    }

    public JSONObject pasarjsonPas(Pas pas){
        JSONObject pas1 = new JSONObject();
        pas1.put("nombre",pas.getNombre());
        pas1.put("apellidos", pas.getApellidos() );
        pas1.put("correo",pas.getCorreo());
        pas1.put("contrasenya", pas.getContrasenya());
        pas1.put("dni", pas.getDNI());
        pas1.put("codigopersonal",  pas.getCodigopersonal());
        pas1.put("anio",  pas.getAnio());
        JSONObject datosapas = new JSONObject();
        datosapas.put("pas",pas1);
        return datosapas;
    }

    public void defectoPas(){
        JSONObject pas = new JSONObject();
        pas.put("nombre", "Laura");
        pas.put("apellidos", "Perez");
        pas.put("correo", "L.perez@gmail.com");
        pas.put("contrasenya", "3456");
        pas.put("dni", "34567890C");
        pas.put("codigopersonal", "C90");
        pas.put("anio", 2010);
        JSONObject datospas = new JSONObject();
        datospas.put("pas", pas);

        JSONArray listapas = new JSONArray();
        listapas.add(datospas);

        fileWriter(listapas);
    }
    public Pas guardarenpas(JSONObject jsonObject){
        JSONObject usuario = (JSONObject) jsonObject.get("pas");
        String nombre = (String) usuario.get("nombre");
        String apellidos = (String) usuario.get("apellidos");
        String correo = (String) usuario.get("correo");
        String contrasenya = (String) usuario.get("contrasenya");
        String dni = (String) usuario.get("dni");
        String codigopersonal = (String) usuario.get("codigopersonal");
        long anio = (long) usuario.get("anio");
        Pas pas = new Pas(nombre,apellidos,correo,contrasenya,dni,codigopersonal,anio);

        return pas;
    }
    public ArrayList<Pas> leerdearchivo(){
        ArrayList<Pas> listapas  =new ArrayList<>();
        JSONParser jsonParser = new JSONParser();
        try(FileReader fileReader = new FileReader("listapas.json")) {
            Object object = jsonParser.parse(fileReader);

            JSONArray listapdas = (JSONArray) object;
            for(Object pas: listapdas){
                Pas pas1 = guardarenpas((JSONObject) pas);
                listapas.add(pas1);
            }
        }catch (FileNotFoundException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }catch (ParseException e){
            e.printStackTrace();
        }
        return listapas;
    }
    public void fileWriter(JSONArray listapas){
        try(FileWriter file = new FileWriter("listapas.json")) {
            file.write(listapas.toJSONString());
            file.flush();
        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
