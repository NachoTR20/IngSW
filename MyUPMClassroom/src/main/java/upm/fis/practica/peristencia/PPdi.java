package upm.fis.practica.peristencia;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import upm.fis.practica.model.usuario.Usuario;
import upm.fis.practica.model.usuario.observador.alumno.Alumno;
import upm.fis.practica.model.usuario.observador.pdi.Pdi;
import upm.fis.practica.model.usuario.observador.pdi.TCategoria;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PPdi {

    public void pasarJsonlistaPdi(List<Pdi> pdis){

        JSONArray array = new JSONArray();
        for(int i=0;i<pdis.size();i++){
            array.add( pasarjsonPdi(pdis.get(i)));
        }
        fileWriter(array);
    }

    public JSONObject pasarjsonPdi(Pdi pdi){
        JSONObject pdi1 = new JSONObject();
        pdi1.put("nombre",pdi.getNombre());
        pdi1.put("apellidos", pdi.getApellidos() );
        pdi1.put("correo",pdi.getCorreo());
        pdi1.put("contrasenya", pdi.getContrasenya());
        pdi1.put("dni", pdi.getDNI());
        pdi1.put("codigotrabajador",  pdi.getCodigotrabajador());
        pdi1.put("categoria",  pdi.getCategoria().toString());
        JSONObject datosapdi = new JSONObject();
        datosapdi.put("pdi",pdi1);
        return datosapdi;
    }

    public void defectoPdi(){
        JSONObject pdi = new JSONObject();
        pdi.put("nombre", "Mario");
        pdi.put("apellidos", "Perez");
        pdi.put("correo", "M.perez@gmail.com");
        pdi.put("contrasenya", "2345");
        pdi.put("dni", "23456789B");
        pdi.put("codigotrabajador", "C10");
        pdi.put("categoria", TCategoria.Ayudante.toString());
        JSONObject datospdi = new JSONObject();
        datospdi.put("pdi", pdi);

        JSONArray pdis = new JSONArray();
        pdis.add(datospdi);

        fileWriter(pdis);
    }
    public Pdi guardarenpdi(JSONObject jsonObject){
        JSONObject usuario = (JSONObject) jsonObject.get("pdi");
        String nombre = (String) usuario.get("nombre");
        String apellidos = (String) usuario.get("apellidos");
        String correo = (String) usuario.get("correo");
        String contrasenya = (String) usuario.get("contrasenya");
        String dni = (String) usuario.get("dni");
        String codigotrabajador = (String) usuario.get("codigotrabajador");
        String tCategoria = (String) usuario.get("categoria");
        TCategoria categoria = TCategoria.valueOf(tCategoria);
        Pdi pdi = new Pdi(nombre,apellidos,correo,contrasenya,dni,codigotrabajador,categoria);

        return pdi;
    }
    public ArrayList<Pdi> leerdearchivo(){
        ArrayList<Pdi> listapdi  =new ArrayList<>();
        JSONParser jsonParser = new JSONParser();
        try(FileReader fileReader = new FileReader("listapdi.json")) {
            Object object = jsonParser.parse(fileReader);

            JSONArray listapdis = (JSONArray) object;
            for(Object pdi: listapdis){
                Pdi pdi1 = guardarenpdi((JSONObject) pdi);
                listapdi.add(pdi1);
            }
        }catch (FileNotFoundException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }catch (ParseException e){
            e.printStackTrace();
        }
        return listapdi;
    }

    public void fileWriter(JSONArray listaPdi){
        try(FileWriter file = new FileWriter("listapdi.json")) {
            file.write(listaPdi.toJSONString());
            file.flush();
        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
