using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DNF.DCJITRFPFProyectoIPS
{
    public partial class EstiloPortalWeb
    {
        public string GetEstilosValue()
        {
            return string.Format("Estilos Graficos Portal Web\n" +
                "\n Titulo : {0}" +
                "\n Color Titulo : {1}" +
                "\n Color Fondo : {2}" +
                "\n Tamaño Titulo : {3}" +
                "\n Alineacion Titulo : {4}" +
                "\n Tipo Letra Titulo : {5}",
                this.Titulo,
                this.ColorTitulo,
                this.ColorFondo,
                this.TamañoTitulo,
                this.AlineacionTitulo,
                this.TipoLetraTitulo);
        }
        public void SetEstilosValue(string newValue)
        {

        }
    }
}
