import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Counter extends Equatable {
  int value;

  Counter({ this.value = 1});
  increment() => value++;
  decrement() => value--;
  
  @override
 
  List<Object?> get props => [value];
}
