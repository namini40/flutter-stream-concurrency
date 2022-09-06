import 'package:flutter_bloc/flutter_bloc.dart';

import 'state.dart';
import 'event.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(StateInit()) {
    on<FirstEvent>((event, emit) async {
      await emit.forEach<int>(getFirstStream(),
          onData: (int data) => State1(data));
    });
    on<SecondEvent>((event, emit) async {
      await emit.forEach<int>(getSecondStream(),
          onData: (int data) => State2(data));
    });  }

  Stream<int> getFirstStream() async* {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield i;
    }
  }

  Stream<int> getSecondStream() async* {
    for (int i = 10; i < 30; i++) {
      await Future.delayed(const Duration(milliseconds: 100));
      yield i;
    }
  }


}
