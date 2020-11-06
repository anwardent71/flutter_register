import 'package:flutter/material.dart';
import '../mixins/validation.dart';

class RegisterScreen extends StatefulWidget {
  createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> with Validation {

  final formKey = GlobalKey<FormState>();

  // DEFINE VARIABLE
  String name = '';
  String email = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0), // SET MARGIN DARI KONTAINER
      child: Form(
        key : formKey,
        child: Column(
          // CHILDREN DARI COLUMN BERISI 4 BUAH PROJECT YANG AKAN DI RENDER, 
          // YAKNI TEXTINPUT UNTUK NAME, EMAIL, PASSWORD, DAN TOMBOL DAFTAR
          children: [
            nameField(),
            emailField(),
            passwordField(),
            registerButton(),
          ],
        )
      ),
    );
  }

  Widget nameField() {
    // MEMBUAT TEXT INPUT
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nama Lengkap'
      ),
      validator: validateName,
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      // KEYBOARD TYPENYA ADALAH EMAIL ADDRESS AGAR SYMBOL @ DILETAKKAN DI DEPAN  KETIKA KEYBOARD DITAMPILKAN
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@example.com',
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      // KETIKA OBSECURETEXT BERNILAI TRUE MAKA SAMA DENGAN TYPE PASSWORD PADA HTML
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan Password',
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget registerButton() {
    // MEMBUAT TOMBOL
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();

          print('Nama lengkap : $name');
          print('Email : $email');
          print('Password : $password');
        }
      },
      child: Text('Daftar'),
    );
  }
}