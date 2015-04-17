<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="como_llegar_usurio.aspx.cs" Inherits="HPV.Presentacion.vista_usuario.como_llegar_usurio" %>
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
            $("#map").attr('src', 'https://www.google.es/maps/dir/9.6596058,-82.801111/Puerto+Viejo+de+Talamanca,+Costa+Rica/@9.652274,-82.7914354,15z/data=!4m8!4m7!1m0!1m5!1m1!1s0x8fa6500ceb9edf15:0x53eb8eada296b945!2m2!1d-82.752778!2d9.658333');
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
            <h3>Como Llegar</h3>
            <p id="descripcion">
            </p>
            <iframe id="map"  name="mipagina" frameborder="0" style=" border:0; margin:5%;" 
                    width="1100" height="500">Tu navegador no soporta iframes</iframe>
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
