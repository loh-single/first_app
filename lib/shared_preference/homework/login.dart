import 'package:flutter/material.dart';
import 'package:frist_app/shared_preference/homework/register_page.dart';

import 'package:frist_app/lesson_Navigation/dialogs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => LoginSate();
}

class LoginSate extends State<Login> {
  bool _isRemember = false;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final _keyForm = GlobalKey<FormState>();
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  Future<void> loadDataFromSharedPreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var userName = prefs.getString('userName') ?? '';
    var password = prefs.getString('password') ?? '';
    setState(() {
      _controller1.text = userName;
      _controller2.text = password;
    });
  }

  @override
  void initState() {
    loadDataFromSharedPreference();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homework Form and Navidition'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //iamge

              Form(
                key: _keyForm,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _controller1,
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      autofocus: true,
                      onFieldSubmitted: (value) async {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        await prefs.setString('userName', value);
                        _keyForm.currentState!.validate();
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _controller2,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      autofocus: false,
                      onFieldSubmitted: (value) async {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        await prefs.setString('password', value);
                        _keyForm.currentState!.validate();
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                value: _isRemember,
                                onChanged: (value) {
                                  setState(() {
                                    _isRemember = !_isRemember;
                                  });
                                },
                              ),
                              const Text(
                                'Remember me',
                                style: TextStyle(fontSize: 16),
                              ),
                              // const SizedBox(
                              //   width: 200,
                              // ),
                            ],
                          ),
                        ),
                        const Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: Colors.redAccent,
                              decoration: TextDecoration.underline),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('${_controller1.text} \n ${_controller2.text}');
                        ScaffoldMessenger.of(context).showSnackBar(
                            DialogsCustom.snackBar(
                                context, 'Validation succes'));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 151, 20, 11),
                          minimumSize: const Size(500, 50)),
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()));
                      },
                      child: const Text(
                        'New here? Register',
                        style: TextStyle(
                            color: Colors.redAccent,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
