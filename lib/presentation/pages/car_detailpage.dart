import 'package:carrentalapp/data/models/car.dart';
import 'package:carrentalapp/presentation/pages/Maps_detailpage.dart';
import 'package:carrentalapp/presentation/widgets/car_card.dart';
import 'package:carrentalapp/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailpage extends StatefulWidget {
  final Car car;
  const CarDetailpage({super.key, required this.car});

  @override
  State<CarDetailpage> createState() => _CarDetailpageState();
}

class _CarDetailpageState extends State<CarDetailpage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller!.forward();
    super.dispose();
  }

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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mapdetailspage(car: widget.car),
                        ),
                      );
                    },
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 5,
                            )
                          ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Transform.scale(
                            scale: _animation!.value,
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/maps.png",
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
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
                          model: widget.car.model,
                          distance: widget.car.distance + 100,
                          fuelcapacity: widget.car.fuelcapacity + 20,
                          pricePerHour: widget.car.pricePerHour + 20)),
                  SizedBox(height: 5),
                  MoreCard(
                      car: Car(
                          model: widget.car.model,
                          distance: widget.car.distance + 100,
                          fuelcapacity: widget.car.fuelcapacity + 20,
                          pricePerHour: widget.car.pricePerHour + 20)),
                  SizedBox(height: 3),
                  MoreCard(
                      car: Car(
                          model: widget.car.model,
                          distance: widget.car.distance + 100,
                          fuelcapacity: widget.car.fuelcapacity + 20,
                          pricePerHour: widget.car.pricePerHour + 20)),
                ],
              ),
            )
          ],
        ));
  }
}
