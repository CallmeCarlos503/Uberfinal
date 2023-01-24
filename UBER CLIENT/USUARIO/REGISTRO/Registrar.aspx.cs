using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USUARIO_REGISTRO_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("../../Index.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("../LOGIN/Login.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {

    }

    

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int ID = 0;
        int proceso2 = 0;
        String Telefono, Nombre, Email, Perfil = "", Password;
        String Fecha;
        DateTime Fechas;
        if (e.CommandName == "Selecciono")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            Nombre = TXTNOMBRE.Text;
            Telefono = TXTTELEFONO.Text;
            Email = TXTCORREO.Text;
            Password = Encriptar.Encripta (TXTCONTRA.Text);
            Cliente objUser = CLIENTESBLL.REGISTRO(Email);
            if(objUser==null)
            {
                if (Perfil == "")
                {
                    Perfil = "https://pbs.twimg.com/profile_images/1569965057/se_or_x_400x400.jpg";
                }
                ID = Convert.ToInt32(((Label)this.DataList1.SelectedItem.FindControl("RESULTADDOLabel")).Text);
                proceso2 = ID + 1;
                Fecha = DateTime.Now.ToShortDateString();
                Fechas = Convert.ToDateTime(Fecha);
                if(Nombre=="" || Email=="" || Telefono=="" || Email == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Debes de rellenar lo que se te pide, ¡Tu informacion nos importa amante de la comida!', 'error')</script>");

                }
                else
                {
                    CLIENTESBLL.Ingresar(proceso2, Telefono, Nombre, Email, Fechas, Perfil, Password);
                    Response.Redirect("/Index.aspx");
                }
                
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Este Correo ya posee dueño para la comida!', 'error')</script>");
                

            }

            




        }
    }
}