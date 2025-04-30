class ApiService{
  getData(){
    print('getData');
  }
}

class MyApp{
  final apiService = ApiService(); /// Tight Coupling

  void getData() {
   apiService.getData();
 }
}