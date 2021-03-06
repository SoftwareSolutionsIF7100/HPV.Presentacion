﻿<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="administrar_paginas.aspx.cs" Inherits="HPV.Presentacion.vista_administrador.administrar_paginas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">

    <link href="../css/owl.carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/jquery-ui.css" />
    <link type="text/css" rel="stylesheet" href="../css/JFGrid.css" />
    <link type="text/css" rel="stylesheet" href="../css/JFFormStyle-1.css" />
    <script type="text/javascript" src="../js/JFCore.js"></script>
    <script type="text/javascript" src="../js/JFForms.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/owl.carousel.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <link rel="shortcut icon" href="../images/favicon.png" type="image/png" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphScripts" runat="server">
    <script>
        $("span.menu").click(function () {
            $(".top-menu ul").slideToggle(200);
        });
    </script>

    <script type="text/javascript">
        (function () {
            JC.init({
                domainKey: ''
            });
        })();
    </script>

    <script src="js/owl.carousel.js"></script>
    <script>
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({
                items: 1,
                lazyLoad: true,
                autoPlay: true,
                navigation: true,
                navigationText: false,
                pagination: false,
            });
        });
    </script>

    <script>
        $(function () {
            $("#datepicker,#datepicker1").datepicker();
        });
    </script>


    <script>
        $(document).ready(function () {
            $("#owl-demo").owlCarousel({
                items: 1,
                lazyLoad: true,
                autoPlay: true,
                navigation: true,
                navigationText: false,
                pagination: false,
            });
        });
    </script>

    <script>
        var enEdicion = "";
        function editar(link) {
            switch (link.id) {
                case "comoLLegar":
                    $(enEdicion).fadeOut("slow");
                    $("#modificarDireccion").fadeIn("slow");
                    enEdicion = "#modificarDireccion";
                    $('#map').attr('src', 'maps.aspx');
                    break;
                case "home":
                    $(enEdicion).fadeOut("slow");
                    $("#modificarHome").fadeIn("slow");
                    enEdicion = "#modificarHome";
                    break;
                case "facilidades":
                    $(enEdicion).fadeOut("slow");
                    $("#modificarFacilidades").fadeIn("slow");
                    enEdicion = "#modificarFacilidades";
                    break;
                case "sobreNosotros":
                    $(enEdicion).fadeOut("slow");
                    $("#modificarSobreNosotros").fadeIn("slow");
                    enEdicion = "#modificarSobreNosotros";
                    break;
            }
        }
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cphBanner" runat="server">
    <div class="banner">
        <div class="banner-info text-center">
            <h3>
                <label>Hola,</label>
                Bienvenidos
            </h3>
            <h1>HOTEL PUERTO VIEJO</h1>
            <span></span>
            <ul>
                <li><a class="scroll" href="#">HOTEL</a><i class="line"></i></li>
                <li><a class="scroll" href="#">TARIFAS</a><i class="line2"></i></li>
                <li><a class="scroll" href="#">SOBRE NOSOTROS</a></li>
                <div class="clearfix"></div>
            </ul>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="cphReservationForm" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphCenter" runat="server">
   
    <!---->
    <div class="package text-center">
        <div class="container">
            <div id="principal">
                <ul>
                    <li><a href="#" onclick="editar(this)" id="home">Home</a></li>
                </ul>
                <ul>
                    <li><a href="#" onclick="editar(this)" id="sobreNosotros">Sobre Nosotros</a></li>
                </ul>
                <ul>
                    <li><a href="#" onclick="editar(this)" id="facilidades">Facilidades</a></li>
                </ul>
                <ul>
                    <li><a href="#" onclick="editar(this)" id="comoLLegar">Como llegar</a></li>
                </ul>
            </div>
            <div id="modificarDireccion" hidden>
                <h3>Como LLegar</h3>
                <iframe id="map" src="maps.aspx" name="mipagina" frameborder="0" style=" border:0; margin:5%;" 
                    width="1100" height="500">Tu navegador no soporta iframes</iframe>
            </div>
         </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="cphTopFotter" runat="server">
    <!---->
<div class="fotter-info">
	 <h6>Copyright©Hotel Puerto Viejo 2015</h6>	  
</div>
<!---->
</asp:Content>

