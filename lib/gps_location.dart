mixin GPSLocation{
  late double latitud;
  late double longitud;

  actualitzarUbicacio(double lat, double lng){
    this.latitud = lat;
    this.longitud = lng;
  }

  (double lat, double lng) obtenirCoordenades() {
    return (latitud, longitud);
  }
}