package upm.fis.practica.peristencia;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import upm.fis.practica.model.aula.Aula;
import upm.fis.practica.model.usuario.observador.Observador;
import upm.fis.practica.model.usuario.observador.alumno.Alumno;
import upm.fis.practica.model.usuario.observador.alumno.IAulmno;


import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class PAlumno {



    public void pasarJsonlistaAlumno(List<Alumno> alumnos){

        JSONArray array = new JSONArray();
        for(int i=0;i<alumnos.size();i++){
            array.add( pasarjsonAlumno(alumnos.get(i)));
        }
        fileWriter(array);
    }

    public JSONObject pasarjsonAlumno(Alumno alumno){
        JSONObject alumno1 = new JSONObject();
        alumno1.put("nombre",alumno.getNombre());
        alumno1.put("apellidos", alumno.getApellidos() );
        alumno1.put("correo",alumno.getCorreo());
        alumno1.put("contrasenya", alumno.getContrasenya());
        alumno1.put("dni", alumno.getDNI());
        alumno1.put("nummatricula", alumno.getNummatricula());
        JSONObject datosalumno = new JSONObject();
        datosalumno.put("alumno",alumno1);
        return datosalumno;
    }

    public void defectoAlumno(){
        JSONObject alumno = new JSONObject();
        alumno.put("nombre", "Alfonso");
        alumno.put("apellidos", "Perez");
        alumno.put("correo", "A.perez@upm.es");
        alumno.put("contrasenya", "1231231234");
        alumno.put("dni", "12345678A");
        alumno.put("nummatricula", "br1234");
        JSONObject datosalumno = new JSONObject();
        datosalumno.put("alumno", alumno);

        JSONArray alumnos = new JSONArray();
        alumnos.add(datosalumno);

        fileWriter(alumnos);
    }
    public Alumno guardarenalumno(JSONObject jsonObject) throws IllegalAccessException {
        JSONObject usuario = (JSONObject) jsonObject.get("alumno");
        String nombre = (String) usuario.get("nombre");
        String apellidos = (String) usuario.get("apellidos");
        String correo = (String) usuario.get("correo");
        String contrasenya = (String) usuario.get("contrasenya");
        String dni = (String) usuario.get("dni");
        String nummatricula = (String) usuario.get("nummatricula");
        Alumno alumno = new Alumno(nombre,apellidos,correo,contrasenya,dni,nummatricula);

        return alumno;
    }
    public ArrayList<Alumno> leerdearchivo(){
        ArrayList<Alumno> alumnos  =new ArrayList<>();
        JSONParser jsonParser = new JSONParser();
        try(FileReader fileReader = new FileReader("alumnos.json")) {
            Object object = jsonParser.parse(fileReader);

            JSONArray listaalumnos = (JSONArray) object;
            for(Object alumno: listaalumnos){
                Alumno alumno1 = guardarenalumno((JSONObject) alumno);
                alumnos.add(alumno1);
            }
        }catch (FileNotFoundException | IllegalAccessException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }catch (ParseException e){
            e.printStackTrace();
        }
        return alumnos;
    }


    public void fileWriter(JSONArray listaAlumnos){
        try(FileWriter file = new FileWriter("alumnos.json")) {
            file.write(listaAlumnos.toJSONString());
            file.flush();
        }catch (IOException e){
            e.printStackTrace();
        }
    }


}
