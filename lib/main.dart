import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login System",
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String username = 'sewak';
  String password = 'Nepal123';
  String Result = '';
  void passcheck() {
    setState(() {
      print(EmailController.text);
      print(PasswordController.text);
      if (EmailController.text == username &&
          PasswordController.text == password) {
        print("Login Success");
        Result = "Login Success";
      } else {
        print("Login Failed");
        Result = 'Username or password Incorrect';
      }
    });
  }

  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B232A),
      body: Column(children: [
        SizedBox(
          height: 200,
        ),
        Center(
          child: Text(
            "Login",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: EmailController,
            obscureText: false,
            decoration: InputDecoration(
                hintText: 'Please Enter your Email',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            style: TextStyle(color: Colors.white),
            controller: PasswordController,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Please Enter your Password',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          color: Colors.red,
          child: Text(
            'Login',
          ),
          onPressed: passcheck,
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            Result.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    ); //
  }
}
