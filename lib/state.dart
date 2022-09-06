import 'package:equatable/equatable.dart';

abstract class MyState extends Equatable{

}


class StateInit extends MyState{
  @override
  List<Object?> get props => [];
}


class State1 extends MyState{
  final int x;

  State1(this.x);

  @override
  List<Object?> get props => [x];
}
class State2 extends MyState{
  final int y;

  State2(this.y);

  @override
  List<Object?> get props => [y];
}