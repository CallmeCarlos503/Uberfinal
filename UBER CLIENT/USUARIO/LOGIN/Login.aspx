<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas_Maestras/Login.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="USUARIO_LOGIN_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    
    </style>
    <link href="../../style/sweetalert.css" rel="stylesheet" />
    <script src="../../scripts/sweetalert.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span id="menu" class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <span id="menu">
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/uber-eats-1613370-1369417.png" Height="123px" Width="149px" /> </span>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
          <asp:LinkButton ID="LinkButton2" runat="server"  OnClick="LinkButton2_Click">
             <CENTER> <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-house-door-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M6.5 10.995V14.5a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5h-4a.5.5 0 0 1-.5-.5V11c0-.25-.25-.5-.5-.5H7c-.25 0-.5.25-.5.495z"/>
  <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
</svg></CENTER><br /> <span id="menu">INICIO</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </asp:LinkButton>
      </li>
      <li class="nav-item">
          <asp:LinkButton ID="LinkButton1" runat="server"  OnClick="LinkButton1_Click" class="nav-link disabled" Enabled="false" >
             <CENTER> <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
  <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
  <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
    </svg></CENTER><br /> <span id="menu">INICIO DE SESION</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
        <li class="nav-item">
               <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-person-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zM13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
</svg></CENTER><br /> <span id="menu">REGISTRATE!</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </asp:LinkButton>
      </li>
        
        <li class="nav-item">
         <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-info-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm8.93 4.588l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM8 5.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg></CENTER><br /> <span id="menu">ACERCA DE NOSOTROS</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
          <li class="nav-item">
         <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-sliders" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z"/>
</svg></CENTER><br /> <span id="menu">ASISTENCIA</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
             
      </li>
      
    </ul>
    
</nav><br />
    
        <center><table border="0" class="auto-style2">
            <tr>
            <td colspan="2">
              <center><asp:Label ID="Label3" runat="server" Text="AREA DE INICIO DE SESION"></asp:Label></center>

            </td>
                </tr>
            <tr>
                <td colspan="2" class="auto-style9">
                    <center>  
                        <img src="../../images/uber-eats-logo.png" class="auto-style5" />
                    </center>
                    <br /><br />
                </td>
            </tr>
             <tr>
                 <td class="auto-style4">
                     <asp:Label ID="Label1" runat="server" Text="Correo Electronico:  "></asp:Label>
                 </td>
                 <td class="auto-style1">
                     <div class="auto-style8">
            
                     <asp:TextBox ID="TXTCORREO" runat="server" class="form-control" aria-label="Sizing example input" aria-describedy="inputGroup-sizing-lg" TextMode="Email" Width="213px"></asp:TextBox>
            </div>

                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">
                     <asp:Label ID="Label2" runat="server" Text="Contraseña:  "></asp:Label>
                 </td>
                 <td class="auto-style1">
                     <div class="auto-style7">
                
                     <asp:TextBox ID="TXTCONTRASEÑA" runat="server" class="form-control" aria-label="Sizing example input" TextMode="Password" Width="216px"></asp:TextBox>
</div>
                 </td>
             </tr>
             <tr>
                 <td colspan="2" class="auto-style6">
                     <center>
                            <asp:LinkButton ID="btnLogin" runat="server" OnClick="btnLogin_Click" class="btn btn-outline-primary" Height="33px" Width="214px">Iniciar Sesion!</asp:LinkButton>
                                <asp:Label ID="Error" runat="server" Text=""></asp:Label>
                            <br />
                     </center>
                 </td>
             </tr>
         </table>
            <br />
            <br />
    </center>
    
    </asp:Content>

