using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USUARIO_LOGIN_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../../Index.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String Email = TXTCORREO.Text;
        String Contra = Encriptar.Encripta(TXTCONTRASEÑA.Text);
        Cliente objuser = CLIENTESBLL.LOGIN(Contra, Email);
        if (objuser == null)
        {
            ClientScript.RegisterStartupScript(this.GetType(),"mensaje","<script>swal('Que pena!', 'Asigne un usuario valido!', 'error')</script>");
            return;
        }
        else
        {
            Response.Redirect("Direccion_casa.aspx?CORREO=" + Email+"&Pass="+Contra);
        }

       
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("../REGISTRO/Registrar.aspx");
    }

    
}