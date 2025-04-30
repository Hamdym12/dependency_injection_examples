void main(){

  final engine = Engine();
  final car = Car(engine);
  car.start();
}

class Car{
  final Engine engine;
  Car(this.engine);

  void start()=> engine.start();
}

class Engine{
  void start(){
    print('start engine');
  }
}