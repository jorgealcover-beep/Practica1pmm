import 'gps_location.dart';

abstract class Vehicle with GPSLocation{
  late String id;
  late int bateriaPercentatge;
  bool enUs = false;
  late double preuPerMinut;

  Vehicle(this.id,int bateria, this.preuPerMinut){
    if (bateria<=100 && bateria>=0){
      this.bateriaPercentatge = bateria;
    }else{
      throw ArgumentError("La bateria ha d'estar entre 0 i 100");
    }
  }

  estatBateria(){
    switch(bateriaPercentatge){
      case  >= 80:
        'alta';
        break;
      case <80 && >= 20:
        'Mitjana';
        break;
      case <20:
        'Critica (Requereix càrrega)';
        break;
    }
  }

  double calcularCostReserva(int minuts){
    double cost = minuts *this.preuPerMinut;
    return cost;
  }
}