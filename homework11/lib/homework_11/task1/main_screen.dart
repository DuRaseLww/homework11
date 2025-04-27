import 'package:flutter/material.dart';
import 'package:homework11/homework_11/task1/about_screen.dart';
import 'package:homework11/homework_11/task1/contacts_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MainScreen(),
      initialRoute: '/main_screen',
      routes: {
        '/contacts_screen': (context) => const ContactsScreen(),
        '/about_screen': (context) => const AboutScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/contacts_screen'),
              child: const Text('Контакты'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/about_screen'),
              child: const Text('О приложении'),
            ),
          ],
        ),
      ),
    );
  }
}
