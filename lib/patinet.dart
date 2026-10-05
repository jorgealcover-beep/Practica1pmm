import 'vehicle.dart';
import 'user.dart';

class Patinet extends Vehicle{
  late int velocitatMaxima;

  Patinet(super.id, super.bateria, super.preuPerMinut,this.velocitatMaxima);

  @override
  double calcularCostReserva(int minuts, [User? usuari]) {
    double cost = minuts * preuPerMinut;
    if (usuari != null && usuari.esVIP) {
      cost *= 0.9;
    }
    return cost;
  }
  
}