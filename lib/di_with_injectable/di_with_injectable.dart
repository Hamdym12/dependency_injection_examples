import 'package:injectable/injectable.dart';

@Singleton()
class GetData {
  List<String> getNames()=>['Hamdy','Ahmed','Ali'];
  List<int> getAges()=>[27,20,31];
}

