import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_app/lesson_Navigation/dialogs.dart';

enum Gender { male, female }

enum Provice { hcm, haNoi, vungTau }

class LoginPageLesForm extends StatefulWidget {
  const LoginPageLesForm({super.key});
  @override
  State<LoginPageLesForm> createState() => _LoginPageLesFormState();
}

class _LoginPageLesFormState extends State<LoginPageLesForm> {
  final _keyForm = GlobalKey<FormState>();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  bool _isChecker = false;
  Gender _gender = Gender.male;
  final FocusNode _focus1 = FocusNode();
  final FocusNode _focus2 = FocusNode();

  Provice? _provice;
  bool isLight = false;
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //ban phim kh bi overflow or dung singlechildscollview
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
                focusNode: _focus1,
                controller: _controller1,
                onTapOutside: (value) => _focus1.unfocus(),
                onSaved: (newValue) {
                  print('User name');
                },
                onFieldSubmitted: (value) {
                  _keyForm.currentState!.validate();
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This value not Empty';
                  }
                  RegExp exp = RegExp(r"^[A-Za-z][A-Za-z0-9_]{7,29}$");

                  if (!exp.hasMatch(value)) {
                    return ' Your user name is INVALID 1';
                  }

                  // if (value.allMatches('*').toList().isNotEmpty) {
                  //   return ' Your user name is INVALID 2';
                  // }

                  // if (value.contains('*')) {
                  //   return ' Your user name is INVALID 3';
                  // }
                },
                decoration: InputDecoration(
                    hintText: 'User name',
                    helperText: 'You should not use character(#,%,@)',
                    counterText: '25',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.white,
                    filled: true),
                autofocus: false,
              ),
              const SizedBox(height: 20),
              TextFormField(
                focusNode: _focus2,
                onTapOutside: (value) => _focus2.unfocus(),
                controller: _controller2,
                onSaved: (newValue) {
                  print('Password');
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This value not Empty';
                  }
                },
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    fillColor: Colors.white,
                    filled: true),
                autofocus: false,
              ),
              CheckboxListTile(
                value: _isChecker,
                onChanged: (value) {
                  setState(() {
                    _isChecker = !_isChecker;
                  });
                },
                title: const Text('Is Male'),
                secondary: const Icon(Icons.male_outlined),
              ),
              _isChecker
                  ? const SizedBox.shrink()
                  : const Text(
                      'You need to check gender',
                      style: TextStyle(color: Colors.redAccent),
                    ),
              RadioListTile<Gender>(
                value: Gender.male,
                title: const Text('Male'),
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = Gender.male;
                  });
                },
              ),
              RadioListTile<Gender>(
                value: Gender.female,
                groupValue: _gender,
                title: const Text('Female'),
                onChanged: (value) {
                  setState(() {
                    _gender = Gender.female;
                  });
                },
              ),
              Switch(
                value: isLight,
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    isLight = !isLight;
                  });
                },
              ),
              CupertinoSwitch(
                value: isLight,
                activeColor: Colors.redAccent,
                onChanged: (bool value) {
                  setState(() {
                    isLight = !isLight;
                  });
                },
              ),
              DropdownButtonFormField<Provice>(
                items: const [
                  DropdownMenuItem(
                    child: Text('Ho Chi Minh'),
                    value: Provice.hcm,
                  ),
                  DropdownMenuItem(
                    child: Text('Ha Noi'),
                    value: Provice.haNoi,
                  ),
                  DropdownMenuItem(
                    child: Text('Vung Tau'),
                    value: Provice.vungTau,
                  ),
                ],
                value: _provice,
                onChanged: (value) {
                  setState(() {
                    _provice = value ?? Provice.hcm;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'This filed is not Empty';
                  }
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    print('${_controller1.text} \n ${_controller2.text}');
                    if (_keyForm.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          DialogsCustom.snackBar(context, 'Validation succes'));
                      _keyForm.currentState!.save();
                    }
                  },
                  child: const Text('Login Page')),
              ElevatedButton(
                  onPressed: () {
                    _focus1.requestFocus();
                  },
                  child: const Text('Auto focus'))
            ],
          ),
        ),
      )),
    );
  }
}
