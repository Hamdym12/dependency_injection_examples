import 'package:injectable/injectable.dart';

@Singleton()
class GetData {
  List<String> getNames()=>['Hamdy','Mohamed','Ahmed',];
  List<int> getAges()=>[27,19,31];
}

@LazySingleton()
class CombineData {
  GetData getData;
  CombineData(this.getData); /// Constructor injection

  List<String> combineData()=> [...getData.getNames(),'Mohamed','Khaled','Ali'];
}


