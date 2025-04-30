import 'package:injectable/injectable.dart';

@LazySingleton()
class CounterClass{
  int _count = 0;
  int get count => _count;

  incrementCounter(){
    _count++;
  }

  decrementCounter(){
    _count--;
  }
}