import 'package:dependency_injection/di/di.dart';
import 'package:dependency_injection/with_di/di_with_service_locater.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocate();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final counter = sl.get<CounterClass>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Center(
          child: Text("${counter.count}",style: TextStyle(fontSize: 50)),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
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
