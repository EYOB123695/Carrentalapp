import 'package:carrentalapp/data/datasource/Firebase_car_data_source.dart';
import 'package:carrentalapp/data/models/car.dart';
import 'package:carrentalapp/domain/repository/carrepository.dart';
import 'package:firebase_core/firebase_core.dart';

class Carrepositoryimpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  Carrepositoryimpl(this.dataSource);

  @override
  Future<List<Car>> getAllCars() {
    return dataSource.getallCars();
  }
}
