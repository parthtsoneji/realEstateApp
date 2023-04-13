import 'package:flutter/material.dart';

class LoginOption extends StatefulWidget {
  const LoginOption({Key? key}) : super(key: key);

  @override
  State<LoginOption> createState() => _LoginOptionState();
}

class _LoginOptionState extends State<LoginOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 17,left: 13,right: 13),
        child: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2,
                  crossAxisCount: 2),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              elevation: 1,
              child: Container(
                child: const Center(child: Text("Hello")),
              ),
            );
          },
        ),
      ),
    );
  }
}
