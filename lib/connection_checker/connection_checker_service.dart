import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';



 class InternetChecker{
  Future<bool> checkInternet()async{
    final bool isConnected = await InternetConnectionChecker.instance.hasConnection;
    if (isConnected) {
      print('Device is connected to the internet');
      return true;
    } else {
      print('Device is not connected to the internet');
      return false;
    }
  }

  slowerInternetChecker()async{
    final customChecker = InternetConnectionChecker.createInstance(
      slowConnectionConfig: SlowConnectionConfig(
        enableToCheckForSlowConnection: true,
        slowConnectionThreshold: const Duration(seconds: 1),
      ),
    );

    bool isConnected = await customChecker.hasConnection;
    print('Custom instance connected: $isConnected');
  }
}

class InternetCheckerStream{
  Future<StreamSubscription<InternetConnectionStatus>> checkInternetStream()async{
    final connectionChecker = InternetConnectionChecker.instance;
    final subscription = connectionChecker.onStatusChange.listen(
          (InternetConnectionStatus status) {
        if (status == InternetConnectionStatus.connected) {
          print('Connected to the internet');
        } else {
          print('Disconnected from the internet');
        }
      },
    );
    return subscription;
    // Remember to cancel the subscription when it's no longer needed
    ///subscription.cancel();
  }
}
