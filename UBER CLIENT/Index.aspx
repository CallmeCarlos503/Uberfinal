<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas_Maestras/Adornos.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="page-top">
  <!-- Navigation -->
  
 
     <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <span id="efe" >
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/uber-eats-1613370-1369417.png" Height="123px" Width="149px" /> </span>&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
          <asp:LinkButton ID="LinkButton2" runat="server"  class="nav-link disabled" Enabled="false" >
             <CENTER> <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-house-door-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M6.5 10.995V14.5a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5h-4a.5.5 0 0 1-.5-.5V11c0-.25-.25-.5-.5-.5H7c-.25 0-.5.25-.5.495z"/>
  <path fill-rule="evenodd" d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
</svg></CENTER><br /> <span>INICIO</span> &nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
      <li class="nav-item">
          <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
             <CENTER> <svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
  <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
  <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
    </svg></CENTER><br /> <span>INICIAR SESION</span>&nbsp;&nbsp;&nbsp;&nbsp;
          </asp:LinkButton>
      </li>
        <li class="nav-item">
               <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-person-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zM13.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H14v1.5a.5.5 0 0 1-1 0V8h-1.5a.5.5 0 0 1 0-1H13V5.5a.5.5 0 0 1 .5-.5z"/>
</svg></CENTER><br /> <span>REGISTRATE!</span> &nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
        
        <li class="nav-item">
         <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-info-square-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm8.93 4.588l-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM8 5.5a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg></CENTER><br /> <span>ACERCA DE NOSOTROS</span> &nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
          <li class="nav-item">
         <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">
             <CENTER><svg width="4em" height="4em" viewBox="0 0 16 16" class="bi bi-sliders" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M11.5 2a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM9.05 3a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0V3h9.05zM4.5 7a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM2.05 8a2.5 2.5 0 0 1 4.9 0H16v1H6.95a2.5 2.5 0 0 1-4.9 0H0V8h2.05zm9.45 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm-2.45 1a2.5 2.5 0 0 1 4.9 0H16v1h-2.05a2.5 2.5 0 0 1-4.9 0H0v-1h9.05z"/>
</svg></CENTER><br /> <span>ASISTENCIA</span> &nbsp;&nbsp;&nbsp;&nbsp;
</asp:LinkButton>
      </li>
      
    </ul>
    
</nav>
 <!--- Fin de la Nav---->
    <section id="Banner" class="content-section">
    <div class="container content-wrap text-center">
      <h1>BIENVENIDOS A UBER EAT'S</h1>
      <h3>
          <em>Bienvenido a Nuestra pagina de Comida rapida</em>
        </h3>
      <a class="btn btn-primary btn-xl smooth-scroll" href="#About">Saber un poco Mas!</a>
    </div>
    <div class="overlay"></div>
  </section>
  <!-- Header Ends -->
  <!-- About Us Starts -->
  <section id="About" class="content-section">
    <div class="container text-center">
      <div class="row">
        <div class="col-lg-12">
          <div class="block-heading">
            <h2>ACERCA DE NOSOTROS
            </h2>
          </div>
          <p class="lead">
              Uber Eats es nuestra plataforma de entrega de comida. Con ella, pedir tus platos favoritos de los restaurantes locales es tan fácil como solicitar un viaje.

La aplicación de Uber Eats te conecta con toda una variedad de restaurantes locales para que puedas pedir tus platos favoritos siempre que te apetezca.

          </p>
        </div>
      </div>
    </div>
  </section>
  <!-- About Us Starts -->
  <section id="Services"  class="content-section text-center">
    <div class="container">
      <div class="block-heading">
        <h2>¿Que ofrecemos?</h2>
      </div>
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="service-box">
            <div class="service-icon yellow">
              <div class="front-content">
                <i class="fa fa-globe" aria-hidden="true"></i>
                <h3>Servicios en todos lados</h3>
              </div>
            </div>
            <div class="service-content">
              <h3>Servicios en todos lados</h3>
              <p>No pierdas el tiempo, nosotros compramos por ti</p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="service-box">
            <div class="service-icon orange">
              <div class="front-content">
                <i class="fa fa-suitcase"></i>
                <h3>Costos bajos</h3>
              </div>
            </div>
            <div class="service-content">
              <h3>Descuentos</h3>
              <p>Brinda un buen servicio a los restaurantes y a los clientes, y accede a más recompensas </p>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="service-box ">
            <div class="service-icon red">
              <div class="front-content">
                <i class="fa fa-male" aria-hidden="true"></i>
                <h3>Menú digital.</h3>
              </div>
            </div>
            <div class="service-content">
              <h3>Menú digital.</h3>
              <p>Menu facil e intuitivo para nuestros cliente, ¡No luches por una pagina tosca!</p>
            </div>
          </div>
        </div>
           <div class="col-md-3 col-sm-6">
          <div class="service-box ">
            <div class="service-icon red">
              <div class="front-content">
                <i class="fa fa-male" aria-hidden="true"></i>
                <h3>Fluidez</h3>
              </div>
            </div>
            <div class="service-content">
              <h3>Fluidez</h3>
              <p> Fluidez al pedido y respuesta rapida</p>
            </div>
          </div>
        </div>
       
      </div>
    </div>
  </section>


 
  <footer class="footer text-center">
    <div class="container">
      <ul class="list-inline">
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white mr-3" href="javascript:void(0)">
              <i class="fa fa-facebook" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chat-left-quote" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v11.586l2-2A2 2 0 0 1 4.414 11H14a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                 <path fill-rule="evenodd" d="M7.066 4.76A1.665 1.665 0 0 0 4 5.668a1.667 1.667 0 0 0 2.561 1.406c-.131.389-.375.804-.777 1.22a.417.417 0 1 0 .6.58c1.486-1.54 1.293-3.214.682-4.112zm4 0A1.665 1.665 0 0 0 8 5.668a1.667 1.667 0 0 0 2.561 1.406c-.131.389-.375.804-.777 1.22a.417.417 0 1 0 .6.58c1.486-1.54 1.293-3.214.682-4.112z"/>
                </svg></i>
            </a>
        </li>
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white mr-3" href="javascript:void(0)">
              <i class="fa fa-twitter" aria-hidden="true"><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-share-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd" d="M11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5z"/>
                </svg></i>
            </a>
        </li>
        <li class="list-inline-item">
          <a class="social-link rounded-circle text-white" href="javascript:void(0)">
              <i class="fa fa-linkedin" aria-hidden="true">
                  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-phone" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M11 1H5a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
  <path fill-rule="evenodd" d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
</svg>
              </i>
            </a>
        </li>
      </ul>
      <p class="text-muted small mb-0">Copyright © UBER EAT'S Company</p>
      <p class="text-muted small mb-0">Power By Carlos Sanchez and Team Corp</p>
    </div>
  </footer>
    </div>
</asp:Content>

