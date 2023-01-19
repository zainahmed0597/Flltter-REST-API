import 'package:http/http.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, password) async {
    try{
      Response response = await post
        // (Uri.parse('https://reqres.in/api/register'),
        (Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': email,
          'password': password
        }
      );
      if(response.statusCode == 200) {
        // var data = jsonDecode(response.body.toString());
        // print(data['token']);
        // print('Account created successfully');
        // print('Login successfully');
      }else {
        // print('failed');
      }
    }catch(e){
      // print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sign Up Api'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                login(emailController.text.toString(), passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration:  BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  // child: Text('Sign up'),
                  child: Text('Login'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
