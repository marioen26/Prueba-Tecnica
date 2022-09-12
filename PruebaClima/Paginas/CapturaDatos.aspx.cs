using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAlClima;

namespace PruebaClima.Paginas
{
    public partial class CapturaDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            
            ServicioClima servicio = new ServicioClima();
            servicio.AddClima(txtTemperatura.Text, txtHumedad.Text, txtVisibilidad.Text);

        }
    }
}