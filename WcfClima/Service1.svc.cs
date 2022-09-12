using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using DAlClima;

namespace WcfClima
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        public void AgregarClima(string CLI_TEMPERATURA, string CLI_HUMEDAD, string CLI_VISIBILDAD)
        {
            ServicioClima servicio = new ServicioClima();
            servicio.AddClima(CLI_TEMPERATURA, CLI_HUMEDAD, CLI_VISIBILDAD);

        }
        public void UpdateClima(int ID)
        {
            ServicioClima servicio = new ServicioClima();
            
        }
        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            throw new NotImplementedException();
        }
    }
}
