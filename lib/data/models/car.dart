class Car {
  final String model;
  final double distance;
  final double fuelcapacity;
  final double pricePerHour;
  Car({
    required this.model,
    required this.distance,
    required this.fuelcapacity,
    required this.pricePerHour,
  });

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      model: map['model'],
      distance: map['distance'],
      fuelcapacity: map['fuelcapacity'],
      pricePerHour: map['pricePerHour'],
    );
  }
}
