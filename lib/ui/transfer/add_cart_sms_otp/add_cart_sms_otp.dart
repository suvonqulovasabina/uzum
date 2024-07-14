import 'package:flutter/material.dart';
import 'package:uzum/cons/cons.dart';
import 'package:uzum/ui/theme/light_colors.dart';

class AddCartSmsOtp extends StatefulWidget {
  const AddCartSmsOtp({super.key});

  @override
  _AddCartSmsOtpState createState() => _AddCartSmsOtpState();
}

class _AddCartSmsOtpState extends State<AddCartSmsOtp> {
  final TextEditingController _controller = TextEditingController();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_checkTextField);
  }

  @override
  void dispose() {
    _controller.removeListener(_checkTextField);
    _controller.dispose();
    super.dispose();
  }

  void _checkTextField() {
    setState(() {
      isButtonEnabled = _controller.text.length == 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xFFF5F6F8),
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text("Confirmation", style: TextStyle(color: Colors.black, fontSize: 20),),
            SizedBox(height: 15,),
            Text("Enter the code that we sent to you at ********3620", style: TextStylesAll.textStyle15black,),
            SizedBox(height: 25,),
            Text("Enter a code", style: TextStylesAll.textStyle15black,),
            SizedBox(height: 5,),
            Theme(
              data: ThemeData(
                primaryColor: LightColors.primary2,
                primaryColorDark: LightColors.primary,
              ),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                maxLength: 6,
                cursorColor: LightColors.primary,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: LightColors.primary, width: 2.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    borderSide: BorderSide(width: 1,color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Text("Recent 1:56", style: TextStylesAll.textStyle18black,),
            Spacer(),
            isButtonEnabled ? GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white ,
                ),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Continue",
                    style: TextStylesAll.textStyle18black,
                  ),
                ),
              ),
            ):SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
