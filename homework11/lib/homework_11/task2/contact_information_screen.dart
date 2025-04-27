import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactInformationScreen extends StatelessWidget {
  final String name;

  const ContactInformationScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
                children: <Widget>[
                  Text(
                      name
                  ),
                  Text('Some information'),
                  ElevatedButton(onPressed:() => Navigator.pop(context), child: Text('Назад'))
                ],
            ),
        ),
      ),
    );
  }
}
