import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        title: const Text('MethodChannel'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 50,
          child: ElevatedButton(
              onPressed: () async {
                const methodChannel = MethodChannel('chatbot');
                final String result =
                    await methodChannel.invokeMethod('showChatbot');
                debugPrint('Resultado: $result');
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.blue),
              ),
              child: const Text(
                "Chamar MethodChannel Chatbot",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
