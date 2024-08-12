import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Greeting App"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello, World!",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Welcome to Flutter!",
            ),
            const SizedBox(
              height: 16,
            ),
            Image.network(
              "https://github.com/srksifat-dev/public_assets/raw/main/flutter_logo.png",
              width: 200,
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green)),
              onPressed: () {
                ScaffoldMessenger.maybeOf(context)!.showSnackBar(
                    const SnackBar(content: Text("Button Pressed!")));
              },
              child: const Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}
