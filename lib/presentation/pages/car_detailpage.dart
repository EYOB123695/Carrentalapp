import 'package:carrentalapp/data/models/car.dart';
import 'package:carrentalapp/presentation/widgets/car_card.dart';
import 'package:carrentalapp/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailpage extends StatelessWidget {
  final Car car;
  const CarDetailpage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.info_outline), Text("Information")],
        )),
        body: Column(
          children: [
            CarCard(
                car: Car(
                    model: "fortune500",
                    distance: 84,
                    fuelcapacity: 60,
                    pricePerHour: 70)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ]),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/user.png"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "janecooper",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "janecooper",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("assets/maps.png"),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ]),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MoreCard(
                      car: Car(
                          model: car.model,
                          distance: car.distance + 100,
                          fuelcapacity: car.fuelcapacity + 20,
                          pricePerHour: car.pricePerHour + 20)),
                  SizedBox(height: 5),
                  MoreCard(
                      car: Car(
                          model: car.model,
                          distance: car.distance + 100,
                          fuelcapacity: car.fuelcapacity + 20,
                          pricePerHour: car.pricePerHour + 20)),
                  SizedBox(height: 3),
                  MoreCard(
                      car: Car(
                          model: car.model,
                          distance: car.distance + 100,
                          fuelcapacity: car.fuelcapacity + 20,
                          pricePerHour: car.pricePerHour + 20)),
                ],
              ),
            )
          ],
        ));
  }
}
