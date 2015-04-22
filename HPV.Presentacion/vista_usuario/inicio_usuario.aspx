<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="inicio_usuario.aspx.cs" Inherits="HPV.Presentacion.vista_usuario.index" %>

<asp:Content ID="Content5" ContentPlaceHolderID="cphCenter" runat="server">
    <!---->
    <div class="package text-center">
        <div class="container">
            <br /><br />
            <h3 id="nombreTipoHotel">Hotel</h3>
            <p id="contenidoPrincipal">
               Hotel Puerto Viejo esta localizado en las playas del Océano Atlántico de la provincia de Limón y posee una playa paradisíaca para los amantes del mar. Dentro de una exótica flora y fauna se encuentra un pueblo costero con unas playas maravillosas de agua azul cristalina y con sorprendentes oportunidades para el surfing. Rápidamente se ha convertido en uno de los primeros puntos turísticos calientes de Costa Rica, muchos sufistas internacionales de todo el mundo vienen a las famosas olas de Salsa Brava, haciendo de este pueblo Caribe el sitio “mas visitado” en Limón.
               Es conocido simplemente como Puerto Viejo por los locales y no debe confundirse con Puerto Viejo de Sarapiqui en Heredia. Este activo pueblo esta a 34 millas al sureste de Puerto Limón y a 102 millas al sur de Cahuita. Puerto Viejo con su encanto único era antiguamente un caserío pequeño y tranquilo de pescadores.
            </p>
            <!-- requried-jsfiles-for owl -->
            <!-- //requried-jsfiles-for owl -->
            <div id="owl-demo" class="owl-carousel">
                <div class="item text-center image-grid">
                    <ul>
                        <li>
                            <img src="../images/1A.jpg" alt=""></li>
                        <li>
                            <img src="../images/2A.jpg" alt=""></li>
                        <li>
                            <img src="../images/3A.jpg" alt=""></li>
                    </ul>
                </div>
                <div class="item text-center image-grid">
                    <ul>
                        <li>
                            <img src="../images/3A.jpg" alt=""></li>
                        <li>
                            <img src="../images/4A.jpg" alt=""></li>
                        <li>
                            <img src="../images/5A.jpg" alt=""></li>
                    </ul>
                </div>
                <div class="item text-center image-grid">
                    <ul>
                        <li>
                            <img src="../images/6A.jpg" alt=""></li>
                        <li>
                            <img src="../images/9A.jpg" alt=""></li>
                        <li>
                            <img src="../images/8A.jpg" alt=""></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="cphTopFotter" runat="server">
    <!---->
<div class="fotter-info">
	 <h6><span id="copyright">Copyright©Hotel Puerto Viejo 2015</span></h6>	  
</div>
<!---->
</asp:Content>
