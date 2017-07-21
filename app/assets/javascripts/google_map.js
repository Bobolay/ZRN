function initialize() {
  
  var styles = [
    {
        "featureType": "all",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#ffffff"
            }
        ]
    },
    {
        "featureType": "all",
        "elementType": "labels.text.stroke",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#424b5b"
            },
            {
                "weight": 2
            },
            {
                "gamma": "1"
            }
        ]
    },
    {
        "featureType": "all",
        "elementType": "labels.icon",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "administrative",
        "elementType": "geometry",
        "stylers": [
            {
                "weight": 0.6
            },
            {
                "color": "#545b6b"
            },
            {
                "gamma": "0"
            }
        ]
    },
    {
        "featureType": "landscape",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#545b6b"
            },
            {
                "gamma": "1"
            },
            {
                "weight": "10"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#666c7b"
            }
        ]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#545b6b"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#424a5b"
            },
            {
                "lightness": "0"
            }
        ]
    },
    {
        "featureType": "transit",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#666c7b"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry",
        "stylers": [
            {
                "color": "#2e3546"
            }
        ]
    }
  ]

  var styledMap = new google.maps.StyledMapType(styles, {name: "Styled Map"});
  
  var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);

  var xCordinate = 49.7997055
  var yCordinate = 24.0246802

  if (w > 640){
    zoomZoom = 16;
  } else {
    zoomZoom = 15;
  };
    
  var mapOptions = {
    zoom: zoomZoom,
    center: new google.maps.LatLng(xCordinate, yCordinate),
    panControl:false,
    zoomControl:true,
    mapTypeControl:false,
    scaleControl:false,
    streetViewControl:false,
    overviewMapControl:false,
    rotateControl:false,
    draggable: true,
    scrollwheel: false,
    mapTypeControlOptions:{
        mapTypeIds: [google.maps.MapTypeId.ROADMAP, "map_style"]
    }
  };

  var map = new google.maps.Map(document.getElementById('googleMap'),
    mapOptions);

  var image = images.map_marker

  var marker = new google.maps.Marker({
    map: map,
    draggable: false,
    position: new google.maps.LatLng(xCordinate, yCordinate),
    icon: image
  });

  map.mapTypes.set('map_style', styledMap);
  map.setMapTypeId('map_style');
}
google.maps.event.addDomListener(window, 'resize', initialize);
google.maps.event.addDomListener(window, 'load', initialize)