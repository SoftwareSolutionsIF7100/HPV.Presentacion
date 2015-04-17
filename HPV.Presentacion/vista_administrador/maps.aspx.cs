using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPV.Presentacion.vista_administrador
{
    public partial class maps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static List<String> obtenerDireccion()
        {
            List<String> direccionRetornar = new List<string>();
            ServiciosHPV.ServiciosClient cliente = new ServiciosHPV.ServiciosClient();
            ServiciosHPV.Direccion direccion = cliente.obtenerDireccion();

            direccionRetornar.Add(direccion.IdDireccion.ToString());
            direccionRetornar.Add(direccion.Descripcion);
            direccionRetornar.Add(direccion.Latitud.ToString().Split('E')[0]);
            direccionRetornar.Add(direccion.Longitud.ToString().Split('E')[0]);
            return direccionRetornar;
        }

        [WebMethod]
        public static String modificarDireccion(String id, String descripcion, String latitud, String longitud)
        {
            ServiciosHPV.Direccion direccion = new ServiciosHPV.Direccion();
            direccion.IdDireccion = int.Parse(id);
            direccion.Descripcion = descripcion;
            direccion.Latitud = Single.Parse(latitud.Remove(5));
            direccion.Longitud = Single.Parse(longitud.Remove(7));
            ServiciosHPV.ServiciosClient cliente = new ServiciosHPV.ServiciosClient();
            int resultado = cliente.modificarDireccion(direccion);

            switch (resultado)
            {
                case 1:
                    return "La dirección se modificó con éxito";
                default:
                    return "Error de conexión con la Base de Datos";
            }
        }
    }
}