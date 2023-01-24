<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas_Maestras/Bootstrap.master" AutoEventWireup="true" CodeFile="Registrar.aspx.cs" Inherits="USUARIO_REGISTRO_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../../style/sweetalert.css" rel="stylesheet" />
     <script src="../../scripts/sweetalert.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <!-- Image and text -->
  <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <span  >
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/uber-eats-1613370-1369417.png" Height="123px" Width="149px" /> </span>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
          <asp:LinkButton ID="LinkButton2" runat="server"  OnClick="LinkButton2_Click">
             <CENTER> <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-house-door-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M6.5 10.995V14.5a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5h-4a.5.5 0 0 1-.5-.5V11c0-.25-.25-.5-.5-.5H7c-.25 0-.5.25-.5.495z"/>
  <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
</svg></CENTER><br /> <span>INICIO</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </asp:LinkButton>
      </li>
      <li class="nav-item">
          <asp:LinkButton ID="LinkButton1" runat="server"  OnClick="LinkButton1_Click" >
             <CENTER> <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
  <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
  <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
    </svg></CENTER><br /> <span>INICIO DE SESION</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </asp:LinkButton>
      </li>
        <li class="nav-item">
               <asp:LinkButton ID="LinkButton3" runat="server" class="nav-link disabled" Enabled="false" >
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-person-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zM13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
</svg></CENTER><br /> <span>REGISTRATE!</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
        
        <li class="nav-item">
         <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-info-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm8.93 4.588l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM8 5.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg></CENTER><br /> <span>ACERCA DE NOSOTROS</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
          <li class="nav-item">
         <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-sliders" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z"/>
</svg></CENTER><br /> <span>ASISTENCIA</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
      
    </ul>
    
</nav>
    <asp:Label ID="guardo" runat="server" Text="Label" Visible="false"></asp:Label>
    <section id="seccion">
         <br /><br />
       <center> <img alt="" src="https://www.nme.com/discount-codes/vfiles/571/merchant_image-merchant_open_graph.png" width="480" height="350" /></center><br />
                         <center><asp:Label ID="Label4" runat="server" Text="REGISTRO DE USUARIO"></asp:Label></center> <br /><br />
        <table border="0">
            <tr>
                <td>
                     <asp:Label ID="Label1" runat="server" Text="INSERTE USERNAME:     "></asp:Label>
                </td>
                <td>
                    <div class="input-group input-group-lg">
                 <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-lg"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
</svg></span>
                 </div>
                    <asp:TextBox ID="TXTNOMBRE" runat="server" class="form-control" aria-label="Sizing example input"></asp:TextBox>
            </div>
                </td>
            </tr>
            <tr>
                <td>
                    <br /><asp:Label ID="Label2" runat="server" Text="TELEFONO     "></asp:Label>

                </td>
                <td>


                    <div class="input-group input-group-lg">
        <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-lg"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-telephone" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
</svg></span>
             </div>
<asp:TextBox ID="TXTTELEFONO" runat="server" class="form-control" aria-label="Sizing example input" TextMode="Phone"></asp:TextBox>        </div>
                    
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="INSERTE SU CORREO ELECTRONICO"></asp:Label>
                 </td>
                <td>
                    <div class="input-group input-group-lg">
             <div class="input-group-prepend">
                 <span class="input-group-text" id="inputGroup-sizing-lg"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"/>
</svg></span>
            </div>
              <asp:TextBox ID="TXTCORREO" runat="server" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" TextMode="Email"></asp:TextBox>

            </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="ASIGNE SU CONTRASEÑA"></asp:Label>
                </td>
                <td>
                    <div class="input-group input-group-lg">
                <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-lg"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-asterisk" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/>
</svg></span>
            </div>
            <asp:TextBox ID="TXTCONTRA" runat="server" class="form-control" aria-label="Sizing example input" TextMode="Password"></asp:TextBox><br />
</div>
                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Msj" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            
        </table>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SDS" OnItemCommand="DataList1_ItemCommand" >
            <ItemTemplate>
                            <center><asp:Button ID="Button1" runat="server" Text="REGISTRAME" CommandName="Selecciono" class="btn btn-outline-primary" /></center>
                <asp:Label ID="RESULTADDOLabel" runat="server" Text='<%# Eval("RESULTADDO") %>' Visible="false" />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SDS" runat="server" ConnectionString="<%$ ConnectionStrings:UBER_EATSConnectionString %>" SelectCommand="SELECT MAX(ID) AS RESULTADDO FROM CLIENTE"></asp:SqlDataSource>
        
    </section>
</asp:Content>

