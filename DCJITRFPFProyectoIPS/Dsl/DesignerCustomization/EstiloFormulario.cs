using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DNF.DCJITRFPFProyectoIPS
{
    public partial class EstiloFormulario
    {
        public string GetEstilosValue()
        {
            return string.Format("Estilos Formularios\n" +
                "\n Color Formulario : {0}" +
                "\n Tamaño Formulario : {1}" +
                "\n Alineacion Formulario : {2}" +
                "\n Tipo Letra Etiqueta Campo : {3}" +
                "\n Formato Visualizacion Campo : {4}" +
                "\n Tipo del Atributo : {5} ",
                this.ColorFormulario,
                this.TamañoFormulario,
                this.AlineacionFormulario,
                this.TipoLetraCampo,
                this.FormatosVisualizacion,
                this.TipoAtributo
                );
        }
        public void SetEstilosValue(string newValue)
        {

        }
    }
}
