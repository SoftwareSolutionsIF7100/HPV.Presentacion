using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace HPV.Presentacion.vista_administrador
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        protected void btnValidar_Click(object sender, EventArgs e)
        {
            String username = txtUsername.Text;
            String contrasenna = txtContrasenna.Text;

            ServiciosHPV.Usuario usuario = new ServiciosHPV.Usuario();
            ServiciosHPV.ServiciosClient client = new ServiciosHPV.ServiciosClient();
            usuario = client.validarUsuario(username, contrasenna);

            Response.BufferOutput = true;
            if (usuario.Username != "" && usuario.Contrasenna != "")
            {
                Response.Redirect("inicio_administrador.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }


    }
}