using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USUARIO_MENU_Editar_Usuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["ID"] != null && Request.Params["CORREO"] != null && Request.Params["DIRECCION"] != null)
        {
            GUARDO_ID.Text = Request.Params["ID"];
            GUARDO_CORREO.Text = Request.Params["CORREO"];
            GUARDO_DIRECCION.Text = Request.Params["DIRECCION"];
        }
        else
        {
            Response.Redirect("../../Index.aspx");
        }

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        String Ruta = "";
        if (e.CommandName == "Seleccion")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;

            if (FileUpload1.HasFile)
            {
                String ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                ext = ext.ToLower();
                int tam = FileUpload1.PostedFile.ContentLength;
                if(ext==".jpg" || ext==".png")
                {
                    FileUpload1.SaveAs(Server.MapPath("../../Perfiles/" + FileUpload1.FileName));
                    Ruta =("../../Perfiles/" + FileUpload1.FileName);
                }
                

            }
            else
            {
                Ruta = ((Label)this.DataList1.SelectedItem.FindControl("imagen")).Text;
            }
            string Perfil = Ruta;
            string Nombre = ((TextBox)this.DataList1.SelectedItem.FindControl("NOMBRE")).Text;
            string Telefono = ((TextBox)this.DataList1.SelectedItem.FindControl("TELEFONO")).Text;
            int ID = Int32.Parse(GUARDO_ID.Text);
            if(Nombre=="" || Telefono == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'huy! debes de rellenar todos tus datos', 'error')</script>");

            }
            else
            {
                CLIENTESBLL.Actualizo(Perfil, Nombre, Telefono, ID);
                Response.Redirect("Perfil.aspx?ID2=" + GUARDO_ID.Text + "&CORREO2=" + GUARDO_CORREO.Text + "&DIRECCION2=" + GUARDO_DIRECCION.Text);
            }
           


        }


    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx?ID="+GUARDO_ID.Text+"&CORREO="+GUARDO_CORREO.Text+"&DIRECCION="+GUARDO_DIRECCION.Text);
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("RESTAURANTES.aspx?ID=" + GUARDO_ID.Text + "&CORREO=" + GUARDO_CORREO.Text + "&DIRECCION=" + GUARDO_DIRECCION.Text);

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("../../Index.aspx?ID=" + GUARDO_ID.Text + "&CORREO=" + GUARDO_CORREO.Text +"&DIRECCION="+GUARDO_DIRECCION.Text);
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Perfil.aspx?ID=" + GUARDO_ID.Text + "&CORREO=" + GUARDO_CORREO.Text + "&DIRECCION=" + GUARDO_DIRECCION.Text);
    }
}