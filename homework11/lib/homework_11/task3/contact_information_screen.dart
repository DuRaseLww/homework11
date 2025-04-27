import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ContactInformationScreen extends StatelessWidget {
  final String contactName;

  const ContactInformationScreen({super.key, required this.contactName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
                children: <Widget>[
                  Text(contactName),
                  Text('Some information'),
                  ElevatedButton(
                      onPressed: () {
                        context.push('/');
                  }
                  , child: Text('Назад'))
                ],
            ),
        ),
      ),
    );
  }
}
