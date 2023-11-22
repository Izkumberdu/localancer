// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: AssetImage('/assets/images/small_logo.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
