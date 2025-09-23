import 'package:flutter/material.dart';
import 'package:login_app/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberChecked = false;

  void _login(BuildContext context) {
    //TODO Email and password pass to api that it will return a token if valid or null
    //TODO Save token
    //Go to HomeScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double verticalSpacing = 20;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(Icons.flutter_dash, size: 100.0, color: Colors.deepPurple),
            SizedBox(height: verticalSpacing),
            Center(
              child: Text(
                "Welcome to Login App",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: verticalSpacing),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email: ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            SizedBox(height: verticalSpacing - 5),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password: ",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),

            SizedBox(height: verticalSpacing),
            ElevatedButton(
              onPressed: () {
                _login(context);
              },
              child: Text("Login"),
            ),
            SizedBox(height: verticalSpacing),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isRememberChecked,
                      onChanged: (bool? isChecked) {
                        setState(() {
                          isRememberChecked = isChecked ?? false;
                        });
                      },
                    ),
                    Text("Remember me"),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ],
            ),
            SizedBox(height: verticalSpacing),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have you an account?"),
                SizedBox(width: 5),
                Text("Sign up", style: TextStyle(color: Colors.deepPurple)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
