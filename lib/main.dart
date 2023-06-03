import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();

  String defineValue = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
            //VALOR
            Text('Valor definido: $defineValue'),
      
            //CAMPO
            TextField(
              controller: textController,
            ),
      
            //BOTÃO
            ElevatedButton(
              onPressed: (){
                String value = textController.text;

                setState(() {
                  defineValue = value;
                });
                
              }, 
              child: const Text("Confirmar"),
            ),
      
          ],
        ),
      ),
    );
  }
}