void main(){

  final engine = Engine();
  final car = Car(engine); /// Injected Dependency
  car.start();
}

class Car{
  final Engine engine; /// Loose Coupling .. Dependency  is Injected
  Car(this.engine);

  void start()=> engine.start();
}

class Engine{
  void start(){
    print('start engine');
  }
}