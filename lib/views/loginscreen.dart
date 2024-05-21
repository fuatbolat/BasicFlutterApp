import 'package:flutter/material.dart';
import 'package:restoran_app/model/data/userdata.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}





class _LoginScreenState extends State<LoginScreen> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  String _errorMessage = '';

  void _login() {
    String id = _idController.text;
    String password = _passwordController.text;

    if (UserData.users.containsKey(id) && UserData.users[id] == password) {
      Navigator.pushNamed(context, '/food');
    } else {
      setState(() {
        _errorMessage = 'Kullanıcı adı veya şifre hatalı!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('BÖTE'),
        backgroundColor: Color.fromARGB(255, 211, 123, 245),
      ),
      backgroundColor: Color.fromARGB(255, 211, 123, 245),
      body: Padding(
  padding: const EdgeInsets.all(30.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    
    children: [
      TextField(
        controller: _idController,
        decoration: InputDecoration(
          labelText: 'Kullanıcı Adı',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
      ),
      SizedBox(height: 30.0),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(
          labelText: 'Şifre',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          fillColor: Colors.grey[200],

          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        ),
        obscureText: true,
      ),
      SizedBox(height: 50.0),
       ElevatedButton(
        onPressed: _login,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
        backgroundColor: Color.fromARGB(255, 70, 138, 106),
        elevation: 3, 
          ),
          child: Text(
                'Giriş Yap',
        style: TextStyle(fontSize: 18, color: Colors.white), 
      ),
    ),

      SizedBox(height: 20.0),
      Text(
        _errorMessage,
        style: TextStyle(color: Colors.red),
      ),
      SizedBox(height: 70.0),
      Text(
           "Kullanıcı Adı ve şifre için model/data/userdata.dart dosyasına gidiniz",
        style: TextStyle(color: Color.fromARGB(255, 231, 188, 185)),
      ),

    ],
  ),
  
  
),

    );
  }

  @override
  void dispose() {
    _idController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}





   