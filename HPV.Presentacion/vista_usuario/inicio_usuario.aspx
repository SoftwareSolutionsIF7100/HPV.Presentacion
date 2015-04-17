<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="inicio_usuario.aspx.cs" Inherits="HPV.Presentacion.vista_usuario.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">

    <link href="../css/owl.carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/jquery-ui.css" />
    <link type="text/css" rel="stylesheet" href="../css/JFGrid.css" />
    <link type="text/css" rel="stylesheet" href="../css/JFFormStyle-1.css" />
    <script type="text/javascript" src="../js/JFCore.js"></script>
    <script type="text/javascript" src="../js/JFForms.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/owl.carousel.js"></script>
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
    <div class="online_reservation">
        <div class="b_room">
            <div class="booking_room">
                <div class="reservation">
                    <ul>
                        <li class="span1_of_1 left">
                            <h5>LLegada</h5>
                            <div class="book_date">
                                <form>
                                    <input class="date" id="datepicker" type="text" value="2/08/2013" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '2/08/2013';}">
                                </form>
                            </div>
                        </li>
                        <li class="span1_of_1 left">
                            <h5>Salida</h5>
                            <div class="book_date">
                                <form>
                                    <input class="date" id="datepicker1" type="text" value="22/08/2013" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '22/08/2013';}">
                                </form>
                            </div>
                        </li>
                        <li class="span1_of_1">
                            <h5>Tipo de habitación</h5>
                            <!----------start section_room----------->
                            <div class="section_room">
                                <select id="country" onchange="change_country(this.value)" class="frm-field required">
                                    <option value="null">Standard</option>
                                    <option value="null">Junior</option>
                                    <option value="AX">Single room</option>
                                    <option value="AX">Double room</option>
                                </select>
                            </div>
                        </li>
                        <li class="span1_of_3">
                            <div class="date_btn">
                                <form>
                                    <input type="submit" value="Ver precios" />
                                </form>
                            </div>
                        </li>
                        <div class="clearfix"></div>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

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
    <!--
    <div class="rooms text-center">
        <div class="container">
            <h3>Our Room Types</h3>
            <div class="room-grids">
                <div class="col-md-4 room-sec">
                    <img src="../images/pic1.jpg" alt="" />
                    <h4>Standard Double Room</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque lectus vitae dui sollicitudin commodo.</p>
                    <div class="items">
                        <li><a href="#"><span class="img1"></span></a></li>
                        <li><a href="#"><span class="img2"></span></a></li>
                        <li><a href="#"><span class="img3"></span></a></li>
                        <li><a href="#"><span class="img4"></span></a></li>
                        <li><a href="#"><span class="img5"></span></a></li>
                        <li><a href="#"><span class="img6"></span></a></li>
                    </div>
                </div>
                <div class="col-md-4 room-sec">
                    <img src="../images/pic2.jpg" alt="" />
                    <h4>Supperior Double Room</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque lectus vitae dui sollicitudin commodo.</p>
                    <div class="items">
                        <li><a href="#"><span class="img1"></span></a></li>
                        <li><a href="#"><span class="img2"></span></a></li>
                        <li><a href="#"><span class="img3"></span></a></li>
                        <li><a href="#"><span class="img4"></span></a></li>
                        <li><a href="#"><span class="img5"></span></a></li>
                        <li><a href="#"><span class="img6"></span></a></li>
                    </div>
                </div>
                <div class="col-md-4 room-sec">
                    <img src="../images/pic3.jpg" alt="" />
                    <h4>Family Room</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque lectus vitae dui sollicitudin commodo.</p>
                    <div class="items">
                        <li><a href="#"><span class="img1"></span></a></li>
                        <li><a href="#"><span class="img2"></span></a></li>
                        <li><a href="#"><span class="img3"></span></a></li>
                        <li><a href="#"><span class="img4"></span></a></li>
                        <li><a href="#"><span class="img5"></span></a></li>
                        <li><a href="#"><span class="img6"></span></a></li>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-md-4 room-sec">
                    <img src="../images/pic4.jpg" alt="" />
                    <h4>Standard Single Room</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque lectus vitae dui sollicitudin commodo.</p>
                    <div class="items">
                        <li><a href="#"><span class="img1"></span></a></li>
                        <li><a href="#"><span class="img2"></span></a></li>
                        <li><a href="#"><span class="img3"></span></a></li>
                        <li><a href="#"><span class="img4"></span></a></li>
                        <li><a href="#"><span class="img5"></span></a></li>
                        <li><a href="#"><span class="img6"></span></a></li>
                    </div>
                </div>
                <div class="col-md-4 room-sec">
                    <img src="../images/pic5.jpg" alt="" />
                    <h4>Supperior Single Room</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque lectus vitae dui sollicitudin commodo.</p>
                    <div class="items">
                        <li><a href="#"><span class="img1"></span></a></li>
                        <li><a href="#"><span class="img2"></span></a></li>
                        <li><a href="#"><span class="img3"></span></a></li>
                        <li><a href="#"><span class="img4"></span></a></li>
                        <li><a href="#"><span class="img5"></span></a></li>
                        <li><a href="#"><span class="img6"></span></a></li>
                    </div>
                </div>
                <div class="col-md-4 room-sec">
                    <img src="../images/pic6.jpg" alt="" />
                    <h4>VIP Room</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent scelerisque lectus vitae dui sollicitudin commodo.</p>
                    <div class="items">
                        <li><a href="#"><span class="img1"></span></a></li>
                        <li><a href="#"><span class="img2"></span></a></li>
                        <li><a href="#"><span class="img3"></span></a></li>
                        <li><a href="#"><span class="img4"></span></a></li>
                        <li><a href="#"><span class="img5"></span></a></li>
                        <li><a href="#"><span class="img6"></span></a></li>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    -->
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="cphTopFotter" runat="server">
    <!---->
<div class="fotter-info">
	 <h6>Copyright©Hotel Puerto Viejo 2015</h6>	  
</div>
<!---->
</asp:Content>
