void main(){

  final engine = Engine();
  final car = Car();

  car.setEngine(engine);
  car.start();
}

class Car{
  late Engine engine;

  setEngine(Engine engine){
    this.engine = engine;
  }

  void start()=> engine.start();
}

class Engine{
  void start(){
    print('start engine');
  }
}