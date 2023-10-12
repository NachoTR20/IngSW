using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DNF.DCJITRFPFProyectoIPS
{
    public partial class EstiloPaginaWeb
    {
        public string GetEstilosValue()
        {
            return string.Format("Estilos Graficos Pagina Web\n" +
                "\n Color Titulo : {0}" +
                "\n Tamaño Titulo : {1}" +
                "\n Alineacion Titulo : {2}" +
                "\n Tipo Letra Titulo : {3}",
                this.ColorTitulo,
                this.TamañoTitulo,
                this.AlineacionTitulo,
                this.TipoLetraTitulo);
        }
        public void SetEstilosValue(string newValue)
        {

        }

    }
}
