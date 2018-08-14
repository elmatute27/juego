<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<script type="text/javascript" src="http://maps.google.com/maps/api/js? 
sensor=false"></script> 
<script type="text/javascript"> 
var geocoder; 
var map; 
function initialize() { 
  geocoder = new google.maps.Geocoder(); 
  var address = document.getElementById("address").value; 
  if (geocoder) { 
    geocoder.geocode( { 'address': address}, function(results, status) 
{ 
  if (status == google.maps.GeocoderStatus.OK) {
       var myOptions = {
          zoom: 15,
          center: results[0].geometry.location,

          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
       var marker = new google.maps.Marker({
           map: map,
           position: results[0].geometry.location
       });
     } else {
       alert("Geocode was not successful for the following reason: " + status);
     }
    }); 
  } 
  var latlng = new google.maps.LatLng(-22.9035393, -43.2095869); 
  var myOptions = {
          zoom: 15,
          center: results[0].geometry.location,
          mapTypeId: google.maps.MapTypeId.ROADMAP 
} 
  map = new google.maps.Map(document.getElementById("map_canvas"), 
myOptions); 
} 
</script> 
</head> 
<body id="home" onload="initialize()"> 

<div id="map_canvas" style="width: 620px; height: 380px;"></div> 
<input id="address" type="text" value="${home.address }, ${home.city}, 
${home.country}"> 
</div> 
<div> 
</body> 