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

<asp:Content ID="Content6" ContentPlaceHolderID="cphCenter" runat="server">
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="cphTopFotter" runat="server">
</asp:Content>
