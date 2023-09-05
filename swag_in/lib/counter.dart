import 'package:equatable/equatable.dart';

class counter extends Equatable {
  int value;

  counter({ this.value = 1});
  increment() => value++;
  decrement() => value--;
  
  @override
 
  List<Object?> get props => [value];
}
