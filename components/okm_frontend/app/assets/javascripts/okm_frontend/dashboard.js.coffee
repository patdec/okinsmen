# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.

$(document).ready ->
  if navigator.geolocation
    navigator.geolocation.getCurrentPosition(
      (position) ->
        latitude=position.coords.latitude
        longitude=position.coords.longitude

        mymap=L.map('OS-map').setView([latitude,longitude],13)

        L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/outdoors-v9/tiles/256/{z}/{x}/{y}?access_token=pk.eyJ1IjoicGF0ZGVjIiwiYSI6ImNpcHJoc25xcTAwMDZpMm5vYnRkdHQzdm0ifQ.AuRLSyilGLrf74UkMX6wwg',{
          attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>'
          maxZoom: 18
          id: 'mapbox.satellite'
          accessToken: 'pk.eyJ1IjoicGF0ZGVjIiwiYSI6ImNpcHJoc25xcTAwMDZpMm5vYnRkdHQzdm0ifQ.AuRLSyilGLrf74UkMX6wwg'
        }).addTo(mymap)
        return
    )



