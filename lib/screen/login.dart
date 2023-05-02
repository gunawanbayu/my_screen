import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    final emailField = buildEmailTextField();
    final passwordField = buildPasswordTextField();
    final loginButton = buildLoginButton();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              emailField,
              SizedBox(height: 16.0),
              passwordField,
              SizedBox(height: 32.0),
              loginButton,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton() {
    return ElevatedButton(
        child: Text(
          'Masuk',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // kode untuk proses login
        });
  }

  Widget buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Alamat Email',
        labelStyle: TextStyle(
          fontSize: 16.0,
          color: Colors.black54,
        ),
        hintText: 'Masukkan alamat email Anda',
        hintStyle: TextStyle(
          fontSize: 16.0,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: Icon(Icons.email),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget buildPasswordTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Kata Sandi',
        labelStyle: TextStyle(
          fontSize: 16.0,
          color: Colors.black54,
        ),
        hintText: 'Masukkan kata sandi Anda',
        hintStyle: TextStyle(
          fontSize: 16.0,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: Icon(Icons.lock),
      ),
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Kata sandi tidak boleh kosong';
        }
        return null;
      },
    );
  }
}
