import 'package:flutter/material.dart';

import '../common/styles.dart';
import '../home/home_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late GlobalKey<FormState> _loginFormKey;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _loginFormKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 10.0,
        ),
        child: Center(
          child: Card(
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22.0,
                  vertical: 12.0,
                ),
                child: buildRegistrationForm(null)),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView buildRegistrationForm(String? errorMsg) {
    return SingleChildScrollView(
      child: Form(
        key: _loginFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Registration Form',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            const Text('Email'),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _emailController,
              decoration: kLoginTextFieldStyle.copyWith(
                hintText: 'Enter your email here',
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Email should not be empty';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            const Text('Password'),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: _passwordController,
              decoration: kLoginTextFieldStyle.copyWith(
                hintText: 'Enter your password here',
              ),
              obscureText: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Password should not be empty';
                }
                return null;
              },
            ),
            const SizedBox(height: 40.0),
            SizedBox(
              height: 32.0,
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('Register'),
                onPressed: () async {
                  // Only allow login if both passed validation
                  if (_loginFormKey.currentState!.validate()) {
                    ///Todo: Implement logic to:
                    ///1. Call API to login
                    ///2. Show loading indicator during API call
                    ///3. If API successful save Auth Token
                    ///3. Navigate to HomeScreen
                  }
                },
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 32.0,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.black45,
                  ),
                ),
                child: const Text('Back to Login'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 20.0),
            errorMsg == null
                ? Container()
                : Container(
                    color: Colors.redAccent,
                    width: double.infinity,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Text(
                          errorMsg,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
