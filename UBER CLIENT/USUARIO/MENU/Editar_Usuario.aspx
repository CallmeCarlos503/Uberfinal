﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas_Maestras/Menu.master" AutoEventWireup="true" CodeFile="Editar_Usuario.aspx.cs" Inherits="USUARIO_MENU_Editar_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../../style/sweetalert.css" rel="stylesheet" />
     <script src="../../scripts/sweetalert.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <span id="efe" >
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/uber-eats-1613370-1369417.png" Height="123px" Width="149px" /> </span>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
          <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"  > <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-egg-fried" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M13.665 6.113a1 1 0 0 1-.667-.977L13 5a4 4 0 0 0-6.483-3.136 1 1 0 0 1-.8.2 4 4 0 0 0-3.693 6.61 1 1 0 0 1 .2 1 4 4 0 0 0 6.67 4.087 1 1 0 0 1 1.262-.152 2.5 2.5 0 0 0 3.715-2.905 1 1 0 0 1 .341-1.113 2.001 2.001 0 0 0-.547-3.478zM14 5c0 .057 0 .113-.003.17a3.001 3.001 0 0 1 .822 5.216 3.5 3.5 0 0 1-5.201 4.065 5 5 0 0 1-8.336-5.109A5 5 0 0 1 5.896 1.08 5 5 0 0 1 14 5z"/>
  <circle cx="8" cy="8" r="3"/>
</svg>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</CENTER><br /><span id="menu">COMIDA</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:LinkButton>
      </li>
      
        <li class="nav-item">
               <asp:LinkButton ID="LinkButton3" OnClick="LinkButton3_Click" runat="server"> <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-shop" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2.97 1.35A1 1 0 0 1 3.73 1h8.54a1 1 0 0 1 .76.35l2.609 3.044A1.5 1.5 0 0 1 16 5.37v.255a2.375 2.375 0 0 1-4.25 1.458A2.371 2.371 0 0 1 9.875 8 2.37 2.37 0 0 1 8 7.083 2.37 2.37 0 0 1 6.125 8a2.37 2.37 0 0 1-1.875-.917A2.375 2.375 0 0 1 0 5.625V5.37a1.5 1.5 0 0 1 .361-.976l2.61-3.045zm1.78 4.275a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0 1.375 1.375 0 1 0 2.75 0V5.37a.5.5 0 0 0-.12-.325L12.27 2H3.73L1.12 5.045A.5.5 0 0 0 1 5.37v.255a1.375 1.375 0 0 0 2.75 0 .5.5 0 0 1 1 0zM1.5 8.5A.5.5 0 0 1 2 9v6h1v-5a1 1 0 0 1 1-1h3a1 1 0 0 1 1 1v5h6V9a.5.5 0 0 1 1 0v6h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1V9a.5.5 0 0 1 .5-.5zM4 15h3v-5H4v5zm5-5a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-2a1 1 0 0 1-1-1v-3zm3 0h-2v3h2v-3z"/>
</svg>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</CENTER><br /><span id="menu">RESTAURANTES</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:LinkButton>
      </li>
        
        <li class="nav-item">
         <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" > <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-door-closed-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M4 1a1 1 0 0 0-1 1v13H1.5a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2a1 1 0 0 0-1-1H4zm2 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</CENTER><br /><span id="menu">CERRAR SESION</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:LinkButton>
      </li>
          <li class="nav-item">
         <asp:LinkButton ID="LinkButton5" runat="server"  class="nav-link" OnClick="LinkButton5_Click"> <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-person-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path fill-rule="evenodd" d="M2 15v-1c0-1 1-4 6-4s6 3 6 4v1H2zm6-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
</svg>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</CENTER><br /><span id="menu">MI PERFIL</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:LinkButton>
      </li>
    </ul>
    
</nav>
    <section id="portada" class="auto-style1">
        <asp:Label ID="GUARDO_CONTRA" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="GUARDO_CORREO" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:Label ID="GUARDO_DIRECCION" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:Label ID="GUARDO_ID" runat="server" Text="Label" Visible="False"></asp:Label>
        <div id="Busqueda">
            <center>
                
            </center>
        </div>
        </section>
    <section id="Desarrollo">
        <br />
        <center>
                        <div class="card" style="width: auto; height:auto; background-color:rgb(52, 58, 64);">

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <asp:label ID="imagen" width="252px" height="240px" runat="server" Text='<%# Eval("PERFIL") %>' Visible="false"  />
            <center><asp:image ID="PERFILLabel" width="252px" height="240px" runat="server" ImageUrl='<%# Eval("PERFIL") %>'  /></center>
            <div class="card-body"><br />
            <center><h5 class="card-title" style="font-size:xx-large">MODIFICACIONES A REALIZAR</h5></center>
            <p class="card-text" style="font-size:xx-large">Por este momento solo podra realizar un cambio de Nombre,Telefono y Perfil</p>
        </div>
        <ul class="list-group list-group-flush" style="background-color:rgb(52, 58, 64);">
         <li class="list-group-item" style="background-color:rgb(52, 58, 64); font-size:x-large">NOMBRE: </li><br /><br />
         <li class="list-group-item" style="background-color:rgb(52, 58, 64);font-size:x-large;"><asp:Textbox ID="NOMBRE" class="form-control" aria-label="Sizing example input" runat="server" Text='<%# Eval("NOMBRE") %>' /></li>
         <li class="list-group-item" style="background-color:rgb(52, 58, 64);font-size:x-large;">TELEFONO</li><br /><br />
         <li class="list-group-item" style="background-color:rgb(52, 58, 64);font-size:x-large;" ><asp:Textbox ID="TELEFONO" class="form-control" aria-label="Sizing example input" runat="server" Text='<%# Eval("TELEFONO") %>' /></li><br /><br />
         <div class="card-body">
             <center><asp:LinkButton runat="server" ID="Link" class="btn btn-outline-success" CommandName="Seleccion">
                 <svg width="3em" height="3em" viewBox="0 0 16 16" class="bi bi-person-check-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm9.854-2.854a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
</svg> <span>Actualizar</span>
             
             </asp:LinkButton></center>
     </div>

            
<br />
            </ItemTemplate>
        </asp:DataList>
               <li class="list-group-item" style="background-color:rgb(52, 58, 64);font-size:x-large;">
                 <center>  <asp:Label ID="Label2" runat="server" Text="Asigne un Archivo JPG si desea el cambio de Perfil"></asp:Label></center>
             <center><asp:FileUpload ID="FileUpload1" runat="server" /></center></li> <br /><br />
        </ul>
    </div>
            </center>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UBER_EATSConnectionString %>" SelectCommand="SELECT [PERFIL], [NOMBRE], [TELEFONO] FROM [CLIENTE] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GUARDO_ID" Name="ID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <center>
       
        </center>
    </section>
</asp:Content>

