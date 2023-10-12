package upm.fis.practica.peristencia;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import upm.fis.practica.model.aula.TAula;
import upm.fis.practica.model.usuario.observador.Observador;

import java.util.ArrayList;
import java.util.List;

public class PObservador {

    public ArrayList<Observador> observadores(JSONArray jsonArray){
        ArrayList<Observador> observadores = new ArrayList<>();
        for(Object observador: jsonArray){
            Observador observador1 = guardarobservador((JSONObject)observador);
            observadores.add(observador1);
        }
        return observadores;
    }

    public Observador guardarobservador(JSONObject jsonObject){
        JSONObject observador = (JSONObject) jsonObject.get("observador");
        String nombre = (String) observador.get("nombre");
        String apellidos = (String) observador.get("apellidos");
        String correo = (String) observador.get("correo");
        String contrasenya = (String) observador.get("contrasenya");
        String dni = (String) observador.get("dni");
        Observador observador1 = new Observador(nombre,apellidos,correo,contrasenya,dni);
        return observador1;
    }
    public JSONArray guardarjsonlista(List<Observador> observadors){
        JSONArray array = new JSONArray();
        for(int i=0;i<observadors.size();i++){
            JSONObject object = new JSONObject();
            object.put("observador",guardarjson(observadors.get(i)));
            array.add(object);
        }
        return array;
    }
    public JSONObject guardarjson(Observador observador){
        JSONObject observador1 = new JSONObject();
        observador1.put("nombre",observador.getNombre());
        observador1.put("apellidos",observador.getApellidos());
        observador1.put("correo",observador.getCorreo());
        observador1.put("contrasenya",observador.getContrasenya());
        observador1.put("dni",observador.getDNI());
        return observador1;
    }
}
