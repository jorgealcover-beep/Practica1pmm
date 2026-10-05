import 'vehicle.dart';

class Cotxe extends Vehicle{
  late int places;
  late bool requereixLicencia;
  static const double suplementFiltreEcologic = 2.0;
  Cotxe(super.id, super.bateria, super.preuPerMinut,this.places,this.requereixLicencia);

  @override
  double calcularCostReserva(int minuts){
    double cost = minuts * preuPerMinut + suplementFiltreEcologic;
    return cost;
  }
  
}