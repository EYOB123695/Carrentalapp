import 'package:carrentalapp/data/models/car.dart';

abstract class CarState { }  

class CarLoading extends CarState {} 

class CarLoaded extends CarState {
  final List<Car> cars;

  CarLoaded(this.cars);
} 

class CarsError extends CarState {
  final String message;

  CarsError(this.message);
}

