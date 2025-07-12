import '../../data/models/car.dart';
import '../repository/carrepository.dart';

class Getcars {  
  final CarRepository carRepository;

  Getcars(this.carRepository);

  Future<List<Car>> call() async {
    return await carRepository.getAllCars();
  }
}