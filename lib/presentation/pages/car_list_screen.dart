import 'package:carrentalapp/data/models/car.dart';
import 'package:carrentalapp/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});
  final List<Car> cars = [
    Car(model: "Fortuner Gr", distance: 80, fuelcapacity: 50, pricePerHour: 60),
     Car(model: "Fortuner Gr", distance: 80, fuelcapacity: 50, pricePerHour: 60),
      Car(model: "Fortuner Gr", distance: 80, fuelcapacity: 50, pricePerHour: 60),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Choose Your Car"), 

          backgroundColor: Color(0xff2c2b34),
          foregroundColor: Colors.white,
          centerTitle: true,
        ), body: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context , index) {
            return CarCard(car: cars[index]);

          }));
  }
}
