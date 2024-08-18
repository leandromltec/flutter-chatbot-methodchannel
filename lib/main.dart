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
      title: 'Exemplo Method Channel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeMethodCannel(),
    );
  }
}

class HomeMethodCannel extends StatefulWidget {
  const HomeMethodCannel({super.key});

  @override
  State<HomeMethodCannel> createState() => _HomeMethodCannelState();
}

class _HomeMethodCannelState extends State<HomeMethodCannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste Method Channel'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                print("foi");
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
              ),
              child: const Text(
                "Chamar Method Channel",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
