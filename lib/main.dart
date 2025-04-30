import 'dart:async';

import 'package:dependency_injection/di/di.dart';
import 'package:dependency_injection/di_with_injectable/di_with_injectable.dart';
import 'package:dependency_injection/with_di/di_with_service_locater.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

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
  final internetChecker =getIt.get<InternetChecker>();
  final internetStreamChecker =getIt.get<InternetCheckerStream>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${counter.count}",style: TextStyle(fontSize: 50)),
              Text("${getData.getNames()}",style: TextStyle(fontSize: 30)),
              Text("${getData.getAges()}",style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: ()async{
              //await internetChecker.checkInternet();
             await internetStreamChecker.checkInternetStream();
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
