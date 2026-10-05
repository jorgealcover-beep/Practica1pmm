import '../lib/user.dart';
import '../lib/vehicle.dart';
import '../lib/patinet.dart';
import '../lib/cotxe.dart';



void main() {
  //Inicialitzacio
  final List<Vehicle> flota = [
    Patinet('P1', 90, 0.25, 25),
    Patinet('P2', 45, 0.25, 20),
    Patinet('P3', 15, 0.30, 25),
    Cotxe('C1', 70, 0.50, 5, true),
    Cotxe('C2', 10, 0.60, 4, false),
  ];

  flota[0].actualitzarUbicacio(39.7217, 2.9112);
  flota[1].actualitzarUbicacio(39.7230, 2.9085);
  flota[2].actualitzarUbicacio(39.7201, 2.9150);
  flota[3].actualitzarUbicacio(39.7250, 2.9070);
  flota[4].actualitzarUbicacio(39.7190, 2.9120);

  //Cerca i filtres
  final mesBateria = flota.reduce(
    (a, b) => a.bateriaPercentatge >= b.bateriaPercentatge ? a : b,);
  print('Vehicle: ${mesBateria.id} Bateria: ${mesBateria.bateriaPercentatge} %');

  final List<Vehicle> flotaBateriaAlta = flota
    .where((v) => v.bateriaPercentatge > 20 && !v.enUs)
    .toList();

  print('Vehicles disponibles:');
  for (final v in flotaBateriaAlta) {
    print('${v.id} - ${v.bateriaPercentatge}%');
  }

  //simulació d'us
  final patinet = flota[0];
  print('Cost patinet 15 minuts: ${patinet.calcularCostReserva(15)}€');
  patinet.actualitzarUbicacio(40.1089, 2.9115);
  var (lat,lng) = patinet.obtenirCoordenades();
  print('latitud: $lat longitud $lng');

  //Maneig d'errors

  User usuari = User.nou(id: '01', nom: 'Jorge', correu: 'Jorge@gmail.com');
  usuari.recarregarSaldo(-10.0);

}