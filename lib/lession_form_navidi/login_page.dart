import 'package:flutter/material.dart';

class LoginPageLesForm extends StatefulWidget {
  const LoginPageLesForm({super.key});
  @override
  State<LoginPageLesForm> createState() => _LoginPageLesFormState();
}

class _LoginPageLesFormState extends State<LoginPageLesForm> {
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page Demo'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _keyForm,
          child: Column(
            children: [
              TextFormField(
                onSaved: (newValue) {
                  print('User name');
                },
                decoration: InputDecoration(
                    hintText: 'User name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.white,
                    filled: true),
                autofocus: false,
              ),
              const SizedBox(height: 20),
              TextFormField(
                onSaved: (newValue) {
                  print('Password');
                },
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.white,
                    filled: true),
                autofocus: false,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    _keyForm.currentState!.save();
                  },
                  child: const Text('Login Page'))
            ],
          ),
        ),
      )),
    );
  }
}
