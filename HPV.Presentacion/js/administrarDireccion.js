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