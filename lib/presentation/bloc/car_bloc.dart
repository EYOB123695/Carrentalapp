import 'package:bloc/bloc.dart';
import 'package:carrentalapp/domain/usecases/get_all_cars.dart';
import 'package:carrentalapp/presentation/bloc/car_event.dart';
import 'package:carrentalapp/presentation/bloc/class_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final Getcars getCars;

  CarBloc({required this.getCars}) : super(CarLoading()) { 
    on<LoadCars>((event,emit)  async  { 
      emit (CarLoading());
      try { 
        final cars = await getCars.call();
        emit(CarLoaded(cars));
      } catch (e) {
        emit(CarsError(e.toString()));
      }

    });

  }

  
}