using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USUARIO_MENU_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["ID"]!=null && Request.Params["CORREO"]!=null && Request.Params["DIRECCION"]!=null )
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

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }

   

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("RESTAURANTES.aspx?ID=" + GUARDO_ID.Text + "&CORREO=" + GUARDO_CORREO.Text + "&DIRECCION=" + GUARDO_DIRECCION.Text);

    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("../../Index.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Perfil.aspx?ID="+GUARDO_ID.Text+"&CORREO="+GUARDO_CORREO.Text+"&DIRECCION="+GUARDO_DIRECCION.Text);
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int  ID_REF = 0;
        decimal Total=0;
        double Precio=0;
        int cantidad = 0;


        String Direccion, Trabajador, Platos, Cliente;
        try
        {
            if (e.CommandName == "Selecciono")
            {

                DataList1.SelectedIndex = e.Item.ItemIndex;
                cantidad = Int32.Parse(((TextBox)this.DataList1.SelectedItem.FindControl("TXTCANTIDAD")).Text);
                Platos = "" + (((Label)this.DataList1.SelectedItem.FindControl("NOMBRELabel")).Text);
                String Precio2 = "" + (((Label)DataList1.SelectedItem.FindControl("PRECIOS")).Text);
                Precio = Double.Parse(Precio2);
                decimal proceso2 = Convert.ToDecimal(Precio);
                String Fecha = DateTime.Now.ToShortDateString();
                DateTime Fecha2 = DateTime.Parse(Fecha);
                Total = Convert.ToDecimal(Precio * cantidad);
                Trabajador = "No Seleccionado";
                Direccion = GUARDO_DIRECCION.Text;
                Cliente = "No confirmado";
                ID_REF = Convert.ToInt32(GUARDO_ID.Text);
                if (cantidad <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Solo valores positivos arriba de cero!', 'error')</script>");
                }
                else
                {
                    MENUBLL.Insertar(Cliente, Platos, Fecha2, Direccion, Trabajador, proceso2, Total, ID_REF);
                }
            (((TextBox)this.DataList1.SelectedItem.FindControl("TXTCANTIDAD")).Text) = "";
            }
        

        }
        catch(Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Porfavor, agregar valores en el espacio que se consigna', 'error')</script>");

        }

    }

    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int ID_REF = 0;
        decimal Total = 0;
        double Precio = 0;


        String Direccion, Trabajador, Platos, Cliente;
        try
        {
            if (e.CommandName == "Selecciono2")
            {

                DataList2.SelectedIndex = e.Item.ItemIndex;
                int cantidad = Int32.Parse(((TextBox)this.DataList2.SelectedItem.FindControl("TXTCANTIDAD")).Text);

                Platos = "" + (((Label)this.DataList2.SelectedItem.FindControl("NOMBRELabel")).Text);
                String Precio2 = "" + (((Label)DataList2.SelectedItem.FindControl("Label4")).Text);
                Precio = Double.Parse(Precio2);
                decimal proceso2 = Convert.ToDecimal(Precio);
                String Fecha = DateTime.Now.ToShortDateString();
                DateTime Fecha2 = DateTime.Parse(Fecha);
                Total = Convert.ToDecimal(Precio * cantidad);
                Trabajador = "No Seleccionado";
                Direccion = GUARDO_DIRECCION.Text;
                Cliente = "No confirmado";
                ID_REF = Convert.ToInt32(GUARDO_ID.Text);
                if (cantidad <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Solo valores positivos arriba de cero!', 'error')</script>");
                }
                else
                {
                    MENUBLL.Insertar(Cliente, Platos, Fecha2, Direccion, Trabajador, proceso2, Total, ID_REF);
                }


            }
        }
        catch(Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Porfavor, agregar valores en el espacio que se consigna', 'error')</script>");

        }

    }

    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int ID_REF = 0;
        decimal Total = 0;
        double Precio = 0;


        String Direccion, Trabajador, Platos, Cliente;
        try
        {
            if (e.CommandName == "Selecciono3")
            {

                DataList3.SelectedIndex = e.Item.ItemIndex;
                int cantidad = Int32.Parse(((TextBox)this.DataList3.SelectedItem.FindControl("TXTCANTIDAD")).Text);

                Platos = "" + (((Label)this.DataList3.SelectedItem.FindControl("NOMBRELabel")).Text);
                String Precio2 = "" + (((Label)DataList3.SelectedItem.FindControl("Label4")).Text);
                Precio = Double.Parse(Precio2);
                decimal proceso2 = Convert.ToDecimal(Precio);
                String Fecha = DateTime.Now.ToShortDateString();
                DateTime Fecha2 = DateTime.Parse(Fecha);
                Total = Convert.ToDecimal(Precio * cantidad);
                Trabajador = "No Seleccionado";
                Direccion = GUARDO_DIRECCION.Text;
                Cliente = "No confirmado";
                ID_REF = Convert.ToInt32(GUARDO_ID.Text);
                if (cantidad <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Solo valores positivos arriba de cero!', 'error')</script>");
                }
                else
                {
                    MENUBLL.Insertar(Cliente, Platos, Fecha2, Direccion, Trabajador, proceso2, Total, ID_REF);
                }
            (((TextBox)this.DataList3.SelectedItem.FindControl("TXTCANTIDAD")).Text) = "";


            }
        }
        catch (Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Porfavor, agregar valores en el espacio que se consigna', 'error')</script>");

        }

    }

    protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int ID_REF = 0;
        decimal Total = 0;
        double Precio = 0;


        String Direccion, Trabajador, Platos, Cliente;
        try
        {
            if (e.CommandName == "Selecciono4")
            {

                DataList4.SelectedIndex = e.Item.ItemIndex;
                int cantidad = Int32.Parse(((TextBox)this.DataList4.SelectedItem.FindControl("TXTCANTIDAD")).Text);
                Platos = "" + (((Label)this.DataList4.SelectedItem.FindControl("NOMBRELabel")).Text);
                String Precio2 = "" + (((Label)DataList4.SelectedItem.FindControl("Label4")).Text);
                Precio = Double.Parse(Precio2);
                decimal proceso2 = Convert.ToDecimal(Precio);
                String Fecha = DateTime.Now.ToShortDateString();
                DateTime Fecha2 = DateTime.Parse(Fecha);
                Total = Convert.ToDecimal(Precio * cantidad);
                Trabajador = "No Seleccionado";
                Direccion = GUARDO_DIRECCION.Text;
                Cliente = "No confirmado";
                ID_REF = Convert.ToInt32(GUARDO_ID.Text);
                if (cantidad <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Solo valores positivos arriba de cero!', 'error')</script>");
                }
                else
                {
                    MENUBLL.Insertar(Cliente, Platos, Fecha2, Direccion, Trabajador, proceso2, Total, ID_REF);
                }
            (((TextBox)this.DataList4.SelectedItem.FindControl("TXTCANTIDAD")).Text) = "";


            }

        }
        catch (Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Porfavor, agregar valores en el espacio que se consigna', 'error')</script>");

        }

    }

    protected void DataList5_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int ID_REF = 0;
        decimal Total = 0;
        double Precio = 0;


        String Direccion, Trabajador, Platos, Cliente;
        try
        {
            if (e.CommandName == "Selecciono5")
            {

                DataList5.SelectedIndex = e.Item.ItemIndex;
                int cantidad = Int32.Parse(((TextBox)this.DataList5.SelectedItem.FindControl("TXTCANTIDAD")).Text);

                Platos = "" + (((Label)this.DataList5.SelectedItem.FindControl("NOMBRELabel")).Text);
                String Precio2 = "" + (((Label)DataList5.SelectedItem.FindControl("Label4")).Text);
                Precio = Double.Parse(Precio2);
                decimal proceso2 = Convert.ToDecimal(Precio);
                String Fecha = DateTime.Now.ToShortDateString();
                DateTime Fecha2 = DateTime.Parse(Fecha);
                Total = Convert.ToDecimal(Precio * cantidad);
                Trabajador = "No Seleccionado";
                Direccion = GUARDO_DIRECCION.Text;
                Cliente = "No confirmado";
                ID_REF = Convert.ToInt32(GUARDO_ID.Text);
                if (cantidad <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Solo valores positivos arriba de cero!', 'error')</script>");
                }
                else
                {
                    MENUBLL.Insertar(Cliente, Platos, Fecha2, Direccion, Trabajador, proceso2, Total, ID_REF);
                }
           (((TextBox)this.DataList5.SelectedItem.FindControl("TXTCANTIDAD")).Text) = "";


            }
        }
        catch (Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Porfavor, agregar valores en el espacio que se consigna', 'error')</script>");

        }

    }

    protected void DataList6_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int ID_REF = 0;
        decimal Total = 0;
        double Precio = 0;

        
        String Direccion, Trabajador, Platos, Cliente;
        try
        {
            if (e.CommandName == "Selecciono6")
            {

                DataList6.SelectedIndex = e.Item.ItemIndex;
                int cantidad = Int32.Parse(((TextBox)this.DataList6.SelectedItem.FindControl("TXTCANTIDAD")).Text);
                Platos = "" + (((Label)this.DataList6.SelectedItem.FindControl("NOMBRELabel")).Text);
                String Precio2 = "" + (((Label)DataList6.SelectedItem.FindControl("Label4")).Text);
                Precio = Double.Parse(Precio2);
                decimal proceso2 = Convert.ToDecimal(Precio);
                String Fecha = DateTime.Now.ToShortDateString();
                DateTime Fecha2 = DateTime.Parse(Fecha);
                Total = Convert.ToDecimal(Precio * cantidad);
                Trabajador = "No Seleccionado";
                Direccion = GUARDO_DIRECCION.Text;
                Cliente = "No confirmado";
                ID_REF = Convert.ToInt32(GUARDO_ID.Text);
                if (cantidad <= 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Solo valores positivos arriba de cero!', 'error')</script>");
                }
                else
                {
                    MENUBLL.Insertar(Cliente, Platos, Fecha2, Direccion, Trabajador, proceso2, Total, ID_REF);
                }
            (((TextBox)this.DataList6.SelectedItem.FindControl("TXTCANTIDAD")).Text) = "";
            }
        }
        catch (Exception)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Que pena!', 'Porfavor, agregar valores en el espacio que se consigna', 'error')</script>");

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

   
}