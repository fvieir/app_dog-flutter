import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_text_form_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CuidapetTextFormField(
              label: 'Login',
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
