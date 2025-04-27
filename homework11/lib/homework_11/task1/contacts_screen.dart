import 'package:flutter/material.dart';
import 'package:homework11/homework_11/task2/contact_information_screen.dart';

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
      home: const ContactsScreen(),
    );
  }
}

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  Map<int, String> users = {
    0: 'Ivan',
    1: 'Dmitry',
    2: 'Yaroslav',
    3: 'Mihail',
    4: 'Yuriy',
    5: 'Alexandr',
    6: 'Vladislav',
    7: 'Sergey',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: SizedBox(
                width: 100,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 20,
                      color: Colors.green,
                      thickness: 2,
                    );
                  },
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ContactInformationScreen(name: '${users[index]}')),
                          );
                      },
                        child: Ink(child: Text(
                            '${users[index]}'
                        ),
                        ),
                    );
                  },
                ),
              ),
            ),
            const Text('Контакты'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('На главный экран'),
            ),
          ],
        ),
      ),
    );
  }
}
