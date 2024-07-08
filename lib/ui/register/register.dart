import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confPasswordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  bool _isObscure = true;
  bool _isError = false;

  // final numberController = TexCon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Royxatdan otish ",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),

            TextField(
              keyboardType: TextInputType.phone,
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: "Phone",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                fillColor: Color(0xFFF3F2F5),
                filled: true,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.name,
              controller: _firstController,
              decoration: InputDecoration(
                labelText: "First Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                fillColor: Color(0xFFF3F2F5),
                filled: true,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: _isObscure,
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                fillColor: Color(0xFFF3F2F5),
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon:
                      Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: _isObscure,
              controller: _confPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                fillColor: Color(0xFFF3F2F5),
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon:
                      Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFF6F00FD)),
              child: InkWell(
                onTap: (){

                },
                child: Center(
                    child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
