<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maps.aspx.cs" Inherits="HPV.Presentacion.vista_administrador.maps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="../js/jquery.min.js"></script>
    <style>
        html, body, #map {
            height: 100%;
            margin: 0px;
            padding: 0px;
        }

        .controls {
            margin-top: 16px;
            border: 1px solid transparent;
            border-radius: 2px 0 0 2px;
            box-sizing: border-box;
            -moz-box-sizing: border-box;
            height: 32px;
            outline: none;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        }

        #pac-input {
            background-color: #fff;
            font-family: Roboto;
            font-size: 15px;
            font-weight: 300;
            margin-left: 12px;
            padding: 0 11px 0 13px;
            text-overflow: ellipsis;
            width: 400px;
        }

            #pac-input:focus {
                border-color: #4d90fe;
            }

        .pac-container {
            font-family: Roboto;
        }

        #type-selector {
            color: #fff;
            background-color: #4d90fe;
            padding: 5px 11px 0px 11px;
        }

            #type-selector label {
                font-family: Roboto;
                font-size: 13px;
                font-weight: 300;
            }

        .textbox {
            width:133%;
            height:350px;
            border: 1px solid #DBE1EB;
            font-size: 18px;
            font-family: Arial, Verdana;
            padding-left: 7px;
            padding-right: 7px;
            padding-top: 10px;
            padding-bottom: 10px;
            border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-border-radius: 4px;
            -o-border-radius: 4px;
            background: #FFFFFF;
            background: linear-gradient(left, #FFFFFF, #F7F9FA);
            background: -moz-linear-gradient(left, #FFFFFF, #F7F9FA);
            background: -webkit-linear-gradient(left, #FFFFFF, #F7F9FA);
            background: -o-linear-gradient(left, #FFFFFF, #F7F9FA);
            color: #2E3133;
        }

            .textbox:focus {
                color: #2E3133;
                border-color: #FBFFAD;
            }

        .btn {
            float:right;
  background: #3498db;
  background-image: -webkit-linear-gradient(top, #3498db, #2980b9);
  background-image: -moz-linear-gradient(top, #3498db, #2980b9);
  background-image: -ms-linear-gradient(top, #3498db, #2980b9);
  background-image: -o-linear-gradient(top, #3498db, #2980b9);
  background-image: linear-gradient(to bottom, #3498db, #2980b9);
  -webkit-border-radius: 28;
  -moz-border-radius: 28;
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 25px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

.btn:hover {
  background: #3cb0fd;
  background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
  background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
  background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
  text-decoration: none;
}

        #lblDireccion {
              width: 300px;
              height: 300px;
              border: none;
              font: normal 25px/1 Arial, Helvetica, sans-serif;
              text-align: center;
              -o-text-overflow: ellipsis;
              text-overflow: ellipsis;
        }
    </style>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false">
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
    <script src="../js/administrarDireccion.js"></script>
</head>
<body>
    <!--Administrar pagina como llegar -->
    <input id="pac-input" class="controls" type="text" placeholder="Search Box" />
    <div id="map" style="float:left; width: 50%; height: 100%"></div>
    <div style="float:left;padding-left: 1%; width: 35%;">
        <span id="lblDireccion">Dirección</span>
        <textarea class="textbox" id="txtDescripcion" cols="60" rows="8"></textarea><br />
        <input id="hdIdDireccion" type="hidden" />
        <input class="btn" id="btnModificar" type="button" onclick="modificarDireccion()" value="Modificar" />
    </div>
    
</body>
</html>
