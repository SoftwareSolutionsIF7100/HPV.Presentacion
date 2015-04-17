<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="administrar_paginas.aspx.cs" Inherits="HPV.Presentacion.vista_administrador.administrar_paginas" %>
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
        var map;
        function initialize() {
            var mapOptions = {
                zoom: 8,
                center: new google.maps.LatLng(-34.397, 150.644)
            };
            map = new google.maps.Map(document.getElementById('map'),
                mapOptions);
        }
        window.onload = initialize;
    </script>
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
            <h3>Hotel De Playa</h3>
            <p>
               Hotel Puerto Viejo esta localizado en las playas del Océano Atlántico de la provincia de Limón y posee una playa paradisíaca para los amantes del mar. Dentro de una exótica flora y fauna se encuentra un pueblo costero con unas playas maravillosas de agua azul cristalina y con sorprendentes oportunidades para el surfing. Rápidamente se ha convertido en uno de los primeros puntos turísticos calientes de Costa Rica, muchos sufistas internacionales de todo el mundo vienen a las famosas olas de Salsa Brava, haciendo de este pueblo Caribe el sitio “mas visitado” en Limón.
               Es conocido simplemente como Puerto Viejo por los locales y no debe confundirse con Puerto Viejo de Sarapiqui en Heredia. Este activo pueblo esta a 34 millas al sureste de Puerto Limón y a 102 millas al sur de Cahuita. Puerto Viejo con su encanto único era antiguamente un caserío pequeño y tranquilo de pescadores.
            </p>
            <iframe src="maps.aspx" name="mipagina" width="700" height="500" framedorber="1">Tu navegador no soporta iframes</iframe>
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

