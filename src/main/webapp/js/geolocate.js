
// Note: This example requires that you consent to location sharing when
// prompted by your browser. If you see the error "The Geolocation service
// failed.", it means you probably did not give permission for the browser to
// locate you.

function initMap() {

    var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 30.2672, lng: 97.7431},
        zoom: 11
    });
    var infoWindow = new google.maps.InfoWindow({map: map});

    // HTML5 geolocation.
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('You are here');
            map.setCenter(pos);

            var service = new google.maps.places.PlacesService(map);

            service.textSearch({
                location: new google.maps.LatLng(pos.lat, pos.lng),
                radius: 48000,
                query: "veteran facilities",
                types: ['hospital']
            }, function(results, status){
                if (status === google.maps.places.PlacesServiceStatus.OK){
                    for (var i =0; i < results.length; i++) {
                        createMarker(results[i]);

                    }
                }
            });
        }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {

        //set latitude and longitude
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
    }
    function createMarker(place) {
        var marker = new google.maps.Marker({
            map: map,
            position: place.geometry.location,
            id: place.place_id
        });
    }
     }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
    }

