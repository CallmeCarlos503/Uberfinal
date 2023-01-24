using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USUARIO_MENU_RESTAURANTES : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["ID"] != null && Request.Params["CORREO"] != null && Request.Params["DIRECCION"] != null)
        {
            GUARDO_CORREO.Text = Request.Params["CORREO"];
            GUARDO_DIRECCION.Text = Request.Params["DIRECCION"];
            GUARDO_ID.Text = Request.Params["ID"];
        }

        else
        {
            Response.Redirect("../LOGIN/Login.aspx");
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Selecciono")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            String Name = (((Label)this.DataList1.SelectedItem.FindControl("Label1")).Text);
            Response.Redirect("Filtro.aspx?ID=" + GUARDO_ID.Text + "&CORREO=" + GUARDO_CORREO.Text + "&DIRECCION=" + GUARDO_DIRECCION.Text + "&NOMBRE=" + Name);

        }
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        String Busqueda = TextBox1.Text;
        if (Busqueda == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Porfavor, agregar valores en el espacio que se consigna en la direccion', 'error')</script>");

        }
        else
        {
            Response.Redirect("Filtro_Busqueda.aspx?ID=" + GUARDO_ID.Text + "&CORREO=" + GUARDO_CORREO.Text + "&DIRECCION=" + GUARDO_DIRECCION.Text + "&FILTRO=" + Busqueda);

        }
    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx?ID=" + GUARDO_ID.Text + "&CORREO=" + GUARDO_CORREO.Text + "&DIRECCION=" + GUARDO_DIRECCION.Text);

    }



    

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("../../Index.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Perfil.aspx?ID=" + GUARDO_ID.Text + "&CORREO=" + GUARDO_CORREO.Text + "&DIRECCION=" + GUARDO_DIRECCION.Text);
    }
}