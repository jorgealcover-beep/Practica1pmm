class User {
  late String _id;
  late String _nomComplet;
  late double _saldo;
  late String correu;
  bool esVIP = false; 

  User(this._id , this._nomComplet, this._saldo, this.correu, this. esVIP);


  User.nou({required String id, required String nom, required String correu}){
    this._id=id;
    this._nomComplet = nom;
    this._saldo = 0.0;
    this.correu = correu;
  }

  double get saldo{
    return this._saldo;
  }

  String get id{
    return this._id;
  }

  recarregarSaldo(double quantitat){
    try{
      if (quantitat<=0){
        throw ArgumentError('Saldo negatiu');
      }else{
        this._saldo += quantitat; 
      }
    }catch(e){
      print('Error: $e');
    }
  }
}