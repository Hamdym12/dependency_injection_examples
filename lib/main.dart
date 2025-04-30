import 'package:dependency_injection/di/di.dart';
import 'package:dependency_injection/di_with_injectable/di_with_injectable.dart';
import 'package:dependency_injection/with_di/di_with_service_locater.dart';
import 'package:flutter/material.dart';
import 'connection_checker/connection_checker_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies('debug');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final counter = getIt.get<CounterClass>();
  final getData = getIt.get<GetData>();
  final combineData = getIt.get<CombineData>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              spacing: 6,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${counter.count}",style: TextStyle(fontSize: 50)),
                Text("${getData.getNames()}",style: TextStyle(fontSize: 20)),
                Text("${getData.getAges()}",style: TextStyle(fontSize: 20)),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "${combineData.combineData()}",
                    style: TextStyle(fontSize: 20),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: ()async{
              //await internetChecker.checkInternet();
             await InternetChecker().checkInternet();
              setState(() {
                counter.incrementCounter();
              });
            },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
