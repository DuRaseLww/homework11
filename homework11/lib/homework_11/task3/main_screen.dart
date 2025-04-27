
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework11/homework_11/task3/contact_information_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const ContactsScreen();
        },
      ),
      GoRoute(
        path: '/contacts/:contactName',
        builder: (BuildContext context, GoRouterState state) {
          final contactName = state.pathParameters['contactName'];
          return ContactInformationScreen(contactName: contactName!);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
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
                        String? name = users[index];
                        context.push('/contacts/$name');
                      },
                      child: Ink(child: Text('${users[index]}')),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 30),
            const Text('Контакты'),
          ],
        ),
      ),
    );
  }
}
