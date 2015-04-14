<%@ Page Title="" Language="C#" MasterPageFile="~/base.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HPV.Presentacion.index" %>


<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">

    <link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
    <link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <link href="css/owl.carousel.css" rel="stylesheet">
    <script type="text/javascript" src="js/JFCore.js"></script>
    <script type="text/javascript" src="js/JFForms.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/owl.carousel.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="cphScripts" runat="server">

    <!-- //script Carrusel -->
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
    
    <!-- //script Datepicker -->
    <script>
        $(function () {
            $("#datepicker,#datepicker1").datepicker();
        });
    </script>

    <!-- //script  -->
    <script type="text/javascript">
        (function () {
            JC.init({
                domainKey: ''
            });
        })();
    </script>

</asp:Content>


<asp:Content ID="Content6" ContentPlaceHolderID="cphCenter" runat="server">

    <div class="package text-center">
        <div class="container">
            <h3>Book A Package</h3>
            <p>
                Sed euismod sem id consequat rutrum. Ut convallis lorem a orci mollis, eu vulputate libero aliquet. Praesent egestas nisi sed purus tincidunt faucibus. Aliquam lobortis orci lacus, sed faucibus augue dapibus vitae. Ut vitae mi sapien. Phasellus a eros justo.
		 Curabitur odio massa, tincidunt nec nibh sit amet
            </p>
            
            <!-- //requried-jsfiles-for owl -->
            <div id="owl-demo" class="owl-carousel">
                <div class="item text-center image-grid">
                    <ul>
                        <li>
                            <img src="images/1.jpg" alt=""></li>
                        <li>
                            <img src="images/2.jpg" alt=""></li>
                        <li>
                            <img src="images/3.jpg" alt=""></li>
                    </ul>
                </div>
                <div class="item text-center image-grid">
                    <ul>
                        <li>
                            <img src="images/3.jpg" alt=""></li>
                        <li>
                            <img src="images/4.jpg" alt=""></li>
                        <li>
                            <img src="images/5.jpg" alt=""></li>
                    </ul>
                </div>
                <div class="item text-center image-grid">
                    <ul>
                        <li>
                            <img src="images/6.jpg" alt=""></li>
                        <li>
                            <img src="images/2.jpg" alt=""></li>
                        <li>
                            <img src="images/8.jpg" alt=""></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!---->
    <!---->
    <div class="rooms text-center">
        <div class="container">
            <h3>Our Room Types</h3>
            <div class="room-grids">
                <div class="col-md-4 room-sec">
                    <img src="images/pic1.jpg" alt="" />
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
                    <img src="images/pic2.jpg" alt="" />
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
                    <img src="images/pic3.jpg" alt="" />
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
                    <img src="images/pic4.jpg" alt="" />
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
                    <img src="images/pic5.jpg" alt="" />
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
                    <img src="images/pic6.jpg" alt="" />
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

</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="cphTopFotter" runat="server">
</asp:Content>
