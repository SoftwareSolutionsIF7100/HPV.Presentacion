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
        padding: 0px
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

    </style>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false">
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
    <script type="text/javascript">
        var latitud = 0;
        var longitud = 0;
        var map;
        var marker = new google.maps.Marker();
        var latlng;
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();

        function InitializeMap() {
            directionsDisplay = new google.maps.DirectionsRenderer();
            latlng = new google.maps.LatLng(latitud, longitud);
            var myOptions = {
                zoom: 10,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.HYBRID
            };
            map = new google.maps.Map(document.getElementById("map"), myOptions);
            marker = new google.maps.Marker({
                position: latlng,
                map: map,
                title: "Hotel Puerto Viejo"
            });
            google.maps.event.addListener(map, 'click', function (event) {
                addMarker(event.latLng);
            });
            directionsDisplay.setMap(map);

            // Create the search box and link it to the UI element.
            var input = /** @type {HTMLInputElement} */(
                document.getElementById('pac-input'));
            map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

            var searchBox = new google.maps.places.SearchBox(
              /** @type {HTMLInputElement} */(input));

            // [START region_getplaces]
            // Listen for the event fired when the user selects an item from the
            // pick list. Retrieve the matching places for that item.
            google.maps.event.addListener(searchBox, 'places_changed', function () {
                var places = searchBox.getPlaces();

                if (places.length == 0) {
                    return;
                }

                var bounds = new google.maps.LatLngBounds();
                for (var i = 0, place; place = places[i]; i++) {
                    bounds.extend(place.geometry.location);
                }

                map.fitBounds(bounds);
            });

            navigator.geolocation.getCurrentPosition(posicionActual);
        }

        function posicionActual(posicion) {
            var actual = new google.maps.LatLng(posicion.coords.latitude, posicion.coords.longitude);
            var request = {
                origin: actual,
                destination: latlng,
                travelMode: google.maps.TravelMode.DRIVING
            };

            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });
        }

        function addMarker(location) {
            marker.setMap(null);
            marker = new google.maps.Marker({
                position: location,
                map: map,
                title: "Hotel Puerto Viejo"
            });

            latitud = location.lat();
            longitud = location.lng();
        }

        window.onload = cargarDireccion;

        function cargarDireccion() {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "./maps.aspx/obtenerDireccion",
                data: "{}",
                dataType: "json",
                success: function (data) {
                    var obj = data.d;
                    $("#hdIdDireccion").val(obj[0]);
                    $("#txtDescripcion").text(obj[1]);
                    latidudString = obj[2].replace(",", ".");
                    longitudString = obj[3].replace(",", ".");
                    latitud = parseFloat(latidudString);
                    longitud = parseFloat(longitudString);
                    InitializeMap();
                },
                error: function (result) {
                    alert("AJAX Error");
                }
            });
        }

        function modificarDireccion() {
            var param = {
                id: $("#hdIdDireccion").val(),
                descripcion: $("#txtDescripcion").val(),
                latitud: latitud.toString().replace(".", ","),
                longitud: longitud.toString().replace(".", ","),
            };

            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                url: "./maps.aspx/modificarDireccion",
                data: JSON.stringify(param),
                dataType: "json",
                success: function (data) {
                    var obj = data.d;
                    alert(obj);
                },
                error: function (result) {
                    alert("AJAX Error");
                }
            });
        }
    </script>
</head>
<body>
        <!--Administrar pagina como llegar --> 
       <input id="pac-input" class="controls" type="text" placeholder="Search Box" />
       <div id="map" style="width:50%; height:50%"></div>
       <div id="direccion">
         <input id="hdIdDireccion" type="hidden"/>
         <textarea id="txtDescripcion"></textarea>
         <input id="btnModificar" type="button" onclick="modificarDireccion()" value="Modificar"/>
       </div>
</body>
</html>
