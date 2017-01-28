
// Note: This example requires that you consent to location sharing when
// prompted by your browser. If you see the error "The Geolocation service
// failed.", it means you probably did not give permission for the browser to
// locate you.

function initMap() {

    var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 30.2672, lng: 97.7431},
        zoom: 10
    });
    var infoWindow = new google.maps.InfoWindow({map: map});

    // HTML5 geolocation
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude,
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('<strong>You are here</strong>');
            map.setCenter(pos);

            var service = new google.maps.places.PlacesService(map);
            service.textSearch({
                location: new google.maps.LatLng(pos.lat, pos.lng),
                radius: 48000,
                query: "Veteran Affairs"
            }, function (results, status) {
                if (status === google.maps.places.PlacesServiceStatus.OK) {
                    for (var i = 0; i < results.length; i++) {
                        createMarker(results[i], service);

                    }
                }
            });
        }, function () {
            handleLocationError(true, infoWindow, map.getCenter());
        });
    } else {

        //set latitude and longitude
        // Browser doesn't support Geolocation
        handleLocationError(false, infoWindow, map.getCenter());
    }
    function createMarker(place, service) {
        var marker = new google.maps.Marker({
            map: map,
            position: place.geometry.location,
            id: place.place_id,
            animation: google.maps.Animation.DROP

        });
        var request = {

            reference: place.reference

        };

// --------------------------- INFOWINDOWS ---------------------------

        google.maps.event.addListener(marker, 'click', function () {

            service.getDetails(request, function (place, status) {

                if (status == google.maps.places.PlacesServiceStatus.OK) {
                    var infowindow = new google.maps.InfoWindow({map: map});

                    var contentStr = '<div>';


                    // Name of Veteran Facility

                    contentStr += '<strong>' + place.name + '</strong>';

                    // Address of Veteran Facility

                    contentStr += (place.vicinity) ? '<br>' + place.vicinity : "<br><em>No Address Provided</em>";


                    contentStr += '</div>';

                    infowindow.setContent(contentStr);

                    infowindow.open(map, marker);
                }

            });

        });
    }
}

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
    }

// function displayMapAt() {
//     $("#map")
//         .html(
//             "<iframe id=\"map_frame\" "
//             + "width=\"100%\" height=\"600px\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" "
//             + "src=\"https://www.google.com/maps/api/js?key%3DAIzaSyBnHCBaScm62QavXo3nx0DqKhhCMWLM-wQ%26libraries%3Dplaces%26callback%3DinitMap"
//              + "></iframe>");
//
// }

// displayMapAt();