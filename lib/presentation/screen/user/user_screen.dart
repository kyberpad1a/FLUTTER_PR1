import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _ClientPageState();
}

class _ClientPageState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      children: [
        Text(
          "Клиент",
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        CustomButton(
          content: 'Назад',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ))));
  }
}