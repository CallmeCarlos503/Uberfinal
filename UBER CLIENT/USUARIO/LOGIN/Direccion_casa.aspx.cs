using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USUARIO_LOGIN_Direccion_casa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["CORREO"] != null && Request.Params["Pass"] != null)
        {
            GUARDOCONTRA.Text = Request.Params["Pass"];
            GUARDOEMAIL.Text = Request.Params["CORREO"];
            


        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }

    /*/ protected void Button1_Click(object sender, EventArgs e)
     {
         String Contra = GUARDOCONTRA.Text;
         String EMAIL = GUARDOEMAIL.Text;
         String Direccion = TXTDIRECCION.Text;
         Response.Redirect("../MENU/Menu.aspx?CORREO=" + EMAIL + "&Pass=" + Contra+"&DIR="+Direccion);

     }/*/





    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int ID;
        if (e.CommandName == "Selecciono")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            ID=Int32.Parse(((Label)this.DataList1.SelectedItem.FindControl("IDLabel")).Text);
            String Guardo = TXTDIRECCION.Text;
            GUARDO_ID.Text =""+ID;
            if (Guardo == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Asigne una direccion valida!', 'error')</script>");

            }
            else
            {
                DIRECCIONBLL.Ingresar(ID, Guardo, GUARDOEMAIL.Text);
                TXTDIRECCION.Text = "";
                GridView1.DataBind();
            }
         
        }


    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton LinkButton1 = (LinkButton)sender;
        String Direccion = LinkButton1.CommandArgument;
        Response.Redirect("../MENU/Menu.aspx?ID="+GUARDO_ID.Text+"&CORREO="+GUARDOEMAIL.Text+"&PASS="+GUARDOCONTRA.Text+"&DIRECCION="+Direccion);

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton LinkButton2 = (LinkButton)sender;
        String Dir =LinkButton2.CommandArgument;
        int ID = Int32.Parse(Dir);
        DIRECCIONBLL.Eliminar(ID);
        GridView1.DataBind();
    }

   
}