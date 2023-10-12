package upm.fis.practica;

import static spark.Spark.*;

import upm.fis.practica.controller.*;


/**
 * APP
 *
 */
public class App {
	
    public static void main( String[] args ) {
    	//LibroController controladorLibros = new LibroController();

		CAulas controladorAulas = new CAulas();
		CUsuarios controladorUsuarios = new CUsuarios();
		CMenu controladormenu = new CMenu();
		CSuscribir suscribir = new CSuscribir();



    	setUp();
    	/*get("/", (req, res) -> {return controladorLibros.listarLibros(req, res);});
    	get("", (req, res) -> {return controladorLibros.listarLibros(req, res);});
		get("/newlibro", (req, res) -> {return controladorLibros.crearLibro(req, res);});
		get("/libro", (req, res) -> {return controladorLibros.recuperarLibro(req, res);});
		get("/test", (req, res) -> {return "hi";});*/

		//menu
		get("/", (req, res) -> {return controladormenu.menu(req,res) ;});
		//enseñar aula
		get("/aula",(req,res)->{return controladorAulas.mostrarAula(req,res);});
		//enseñar listaaula
		get("/listaraulas", (req, res) -> {return controladorAulas.listarAulas(req, res);});
		//crea una nueva aula y la guarda
		get("/newaula", (req, res) -> {return controladorAulas.crearAula(req, res);});
		post("/guardaraulas",(req,res)->{return controladorAulas.guardaraulas(req,res);});
		//enseñar listausuarios
		get("/listaralumnos", (req,res)->{return controladorUsuarios.listarAlumnos(req,res);});
		get("/listarpdis", (req,res)->{return controladorUsuarios.listarPdis(req,res);});
		get("/listarpas", (req,res)->{return controladorUsuarios.listarPas(req,res);});
		//enseñar usuario
		get("/alumno",(req,res)->{return controladorUsuarios.mostrarAlumno(req,res);});
		get("/pdi",(req,res)->{return controladorUsuarios.mostrarPdi(req,res);});
		get("/pas",(req,res)->{return controladorUsuarios.mostrarPas(req,res);});
		//crea una nuevo asuario y guardarlo
		get("/newusuario", (req, res) -> {return controladorUsuarios.darAlta(req,res);});
		get("/newalumno", (req, res) -> {return controladorUsuarios.darAltaAlumno(req,res);});
		get("/newpdi", (req, res) -> {return controladorUsuarios.darAltaPdi(req,res);});
		get("/newpas", (req, res) -> {return controladorUsuarios.darAltaPas(req,res);});
		post("/guardaralumno", (req, res) -> {return controladorUsuarios.guardarAlumno(req,res);});
		post("/guardarpdi", (req, res) -> {return controladorUsuarios.guardarPdi(req,res);});
		post("/guardarpas", (req, res) -> {return controladorUsuarios.guardarPas(req,res);});
		//suscribirse
		get("/elegirobservador",(req, res)->{return suscribir.elegirobservador(req,res);});
		get("/suscribiralumnos",(req, res)->{return suscribir.listarAlumno(req,res);});
		get("/suscribirpdi",(req, res)->{return suscribir.listarPdi(req,res);});
		get("/suscribirAlumno", (req, res) -> {return suscribir.suscibrirAlumno(req,res);});
		get("/suscribirPdi", (req, res) -> {return suscribir.suscibrirPdi(req,res);});
		get("/guardarsuscritoalumno", (req, res) -> {return suscribir.guardaryverAlumno(req,res);});
		get("/guardarsuscritospdi", (req, res) -> {return suscribir.guardaryverPdi(req,res);});
		get("/versuscritos", (req, res) -> {return suscribir.versuscritos(req,res);});


    	

    	

    	
    }
    
    public static void setUp() {
    	staticFiles.location("./src/test/resource");
        staticFiles.externalLocation("./src/test/resource");
    }
}
