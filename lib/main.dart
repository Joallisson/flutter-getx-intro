import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_intro/value_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final textController = TextEditingController();

  final valueController = ValueController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //VALOR
            GetBuilder<ValueController>(
              init: valueController,
              builder: (controller) {
                return Text('Valor definido: ${controller.definedValue}');
              },
            ),

            //CAMPO
            TextField(
              controller: textController,
            ),

            //BOTÃO
            GetBuilder<ValueController>(
              init: valueController,
              builder: (controller) {
              return controller.isLoading 
              ? const CircularProgressIndicator() 
              : ElevatedButton(
                onPressed: () {
                  String value = textController.text;
                  valueController.setValue(value);
                },
                child: const Text("Confirmar"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
