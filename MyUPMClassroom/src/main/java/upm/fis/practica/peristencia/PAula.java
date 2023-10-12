package upm.fis.practica.peristencia;


import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import upm.fis.practica.model.aula.Aula;
import upm.fis.practica.model.aula.TAula;
import upm.fis.practica.model.usuario.observador.Observador;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class PAula {
    public void pasarjsonaula(List<Aula> aulas){
        JSONArray jsonArray  = new JSONArray();
        for(int i=0;i<aulas.size();i++){
            jsonArray.add(pasarjson(aulas.get(i)));
        }
        guardarenarchivo(jsonArray);
    }
    public JSONObject pasarjson(Aula aula){
        PObservador pObservador = new PObservador();
        JSONArray observadores = pObservador.guardarjsonlista(aula.getObservadores());

        JSONObject aula1 = new JSONObject();
        aula1.put("nombreaula",aula.getNombreAula());
        aula1.put("id", aula.getId());
        aula1.put("superficie",aula.getSuperficie());
        aula1.put("aforo", aula.getAforo());
        aula1.put("tipoAula", aula.getTipo().toString());
        aula1.put("observadores",observadores);
        JSONObject datosaula = new JSONObject();
        datosaula.put("aula",aula1);
        return datosaula;
    }


    public void guardarenarchivo(JSONArray listaAulas){
        fileWriter(listaAulas);

    }
    public ArrayList<Aula> leerdearchivo(){
        ArrayList<Aula> aulas  =new ArrayList<>();
        JSONParser jsonParser = new JSONParser();
        try(FileReader fileReader = new FileReader("aulas.json")) {
            Object object = jsonParser.parse(fileReader);

            JSONArray listaAulas = (JSONArray) object;
            for(Object aula: listaAulas){
                Aula aula1 = guardarenaula((JSONObject) aula);
                aulas.add(aula1);
            }
        }catch (FileNotFoundException e){
            e.printStackTrace();
        }catch (IOException e){
            e.printStackTrace();
        }catch (ParseException e){
            e.printStackTrace();
        }
        return aulas;
    }
    public Aula guardarenaula(JSONObject jsonObject){
        JSONObject aula = (JSONObject) jsonObject.get("aula");
        String nombre = (String) aula.get("nombreaula");
        String id = (String) aula.get("id");
        double superficie = (Double) aula.get("superficie");
        long aforo = (long) aula.get("aforo");
        String tipoAula = (String) aula.get("tipoAula");
        PObservador pObservador =new PObservador();
        ArrayList<Observador> observadores = pObservador.observadores((JSONArray) aula.get("observadores"));
        TAula tAula= TAula.valueOf(tipoAula);
        Aula aula1 = new Aula(nombre,id,superficie,aforo,tAula,observadores);

        return aula1;
    }


    public void archivopordefecto(){
        //aula1
        //lista de observadores
        JSONArray listobservadores = new JSONArray();
        JSONObject aula1 = new JSONObject();
        aula1.put("nombreaula","Aula1");
        aula1.put("id", "1");
        aula1.put("superficie",100.0);
        aula1.put("aforo", 100);
        aula1.put("tipoAula", TAula.TEORIA.toString());
        aula1.put("observadores",listobservadores);
        //aula2
        JSONArray listobservadores2 = new JSONArray();
        JSONObject aula2 = new JSONObject();
        aula2.put("nombreaula","Aula2");
        aula2.put("id", "2");
        aula2.put("superficie",100.0);
        aula2.put("aforo", 100);
        aula2.put("tipoAula", TAula.LABORATORIO.toString());
        aula2.put("observadores",listobservadores2);
        //aula3
        JSONArray listobservadores3 = new JSONArray();
        JSONObject aula3 = new JSONObject();
        aula3.put("nombreaula","Aula3");
        aula3.put("id", "3");
        aula3.put("superficie",100.0);
        aula3.put("aforo", 100);
        aula3.put("tipoAula", TAula.MIXTA.toString());
        aula3.put("observadores",listobservadores3);
        //lista aula
        JSONObject datosaula1 = new JSONObject();
        datosaula1.put("aula",aula1);
        JSONObject datosaula2 = new JSONObject();
        datosaula2.put("aula",aula2);
        JSONObject datosaula3 = new JSONObject();
        datosaula3.put("aula",aula3);
        JSONArray listaAulas = new JSONArray();
        listaAulas.add(datosaula1);
        listaAulas.add(datosaula2);
        listaAulas.add(datosaula3);

        fileWriter(listaAulas);

    }
    public void fileWriter(JSONArray listaAulas){
        try(FileWriter file = new FileWriter("aulas.json")) {
            file.write(listaAulas.toJSONString());
            file.flush();
        }catch (IOException e){
            e.printStackTrace();
        }
    }
}
