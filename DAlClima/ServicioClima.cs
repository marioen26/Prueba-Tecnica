using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAlClima
{
    public class ServicioClima
    {
        PruebaEntities cl = new PruebaEntities();

        public void AddClima(string CLI_TEMPERATURA, string CLI_HUMEDAD, string CLI_VISIBILIDAD)
        {
            Clima c = new Clima();
            c.CLI_TEMPERATURA = CLI_TEMPERATURA;
            c.CLI_HUMEDAD =     CLI_HUMEDAD;
            c.CLI_VISIBILIDAD = CLI_VISIBILIDAD;
            cl.Climas.Add(c);
            cl.SaveChanges();
        }
        public void  UpdateClima(int Id, string CLI_TEMPERATURA, string CLI_HUMEDAD, string CLI_VISIBILIDAD)
        {
            Clima c = new Clima();
            c.Id = Id;
            c.CLI_TEMPERATURA = CLI_TEMPERATURA;
            c.CLI_HUMEDAD = CLI_HUMEDAD;
            c.CLI_VISIBILIDAD = CLI_VISIBILIDAD;
            
        }
    }
}
