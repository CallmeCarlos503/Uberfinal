using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USUARIO_MENU_Perfil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.Params["ID"] != null  && Request.Params["CORREO"] != null && Request.Params["DIRECCION"] != null)
        {
            GUARDO_ID.Text = Request.Params["ID"];
            GUARDO_CORREO.Text = Request.Params["CORREO"];
            GUARDO_DIRECCION.Text = Request.Params["DIRECCION"];
        }
        else if(Request.Params["ID2"] != null && Request.Params["CORREO2"] != null && Request.Params["DIRECCION2"] != null)
        {
           
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Excelente!', 'haz dado un color a tu imagen!', 'success')</script>");

            
            GUARDO_ID.Text = Request.Params["ID2"];
            GUARDO_CORREO.Text = Request.Params["CORREO2"];
            GUARDO_DIRECCION.Text = Request.Params["DIRECCION2"];
        }
        else
        {
            Response.Redirect("../../Index.aspx");
        }
      }
        

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        try
        {
            if (e.CommandName == "Seleccion")
            {

                DataList1.SelectedIndex = e.Item.ItemIndex;
                DataList2.SelectedIndex = e.Item.ItemIndex;
                String Nombre = "" + (((Label)this.DataList1.SelectedItem.FindControl("NOMBRELabel")).Text);
                int ID = Int32.Parse(((Label)this.DataList1.SelectedItem.FindControl("IDLABEL")).Text);
                Double Pago = Double.Parse(((Label)this.DataList2.SelectedItem.FindControl("TOTALLabel")).Text);
                MENU_PROCESO objProceso = PROCESOBLL.FILTRO(ID);
                if (objProceso == null)
                {
                    
                        MENUBLL.Actualizar(Nombre, ID);
                        MENUBLL.COPIO(ID);
                        MENUBLL.borro(ID);
                        DataList2.DataBind();

                        GridView1.DataBind();
                        ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Excelente!', 'Haz hecho tu pedido!', 'success')</script>");


                    
                   


                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Usted ya posee un pedido pendiente', 'warning')</script>");
                }

            }
            
        }
        catch (Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Porfavor, debe de agregar articulos al carrito', 'error')</script>");

        }

    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Editar_Usuario.aspx?ID=" + GUARDO_ID.Text +"&CORREO="+GUARDO_CORREO.Text+"&DIRECCION="+GUARDO_DIRECCION.Text);
    }

    protected void ELIMINAR_Click(object sender, EventArgs e)
    {
        LinkButton Eliminar = (LinkButton)sender;
        String ID = ""+Eliminar.CommandArgument;
        int ID2 = Int32.Parse(ID);
        MENUBLL.ELIMINAR(ID2);
        GridView1.DataBind();
        DataList2.DataBind();
     
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
        Response.Redirect("../../Index.aspx");

    }
}