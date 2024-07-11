
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum/ui/register/register.dart';

import '../../cons/cons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,

                  "Welcome to Uzum Bank ",style:
                TextStyle(color: Colors.black,
                    fontSize:
                25,fontWeight: FontWeight.bold)

                  ,),
              ),


            const SizedBox(height: 15,),
            TextField(
              keyboardType: TextInputType.phone,
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: "Phone",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Cons.textBorderRadius),
                    borderSide: BorderSide.none),
                fillColor: const Color(0xFFF3F2F5),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: _passwordController ,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Cons.textBorderRadius),
                    borderSide: BorderSide.none),
                fillColor: Color(0xFFF3F2F5),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF6F00FD)),
              child: InkWell(
                onTap: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context)=>
                 const Register()
                  ));
                },
                child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("By continuing.I agree to the termos end conditions the processing of personal data ",style:
              TextStyle(color: Colors.grey,fontSize:
              12,fontWeight: FontWeight.bold),

                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}