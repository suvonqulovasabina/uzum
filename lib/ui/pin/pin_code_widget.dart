import 'package:flutter/material.dart';
import 'package:uzum/ui/theme/components.dart';
import 'package:uzum/ui/theme/light_colors.dart';

class PinCodeWidget extends StatefulWidget {
  const PinCodeWidget({super.key});

  @override
  State<PinCodeWidget> createState() => _PinCodeWidgetState();
}

class _PinCodeWidgetState extends State<PinCodeWidget> {
  String enteredPin = '';
  String originalPassword = "0000";
  bool isError = false;

  Widget numberButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: TextButton(
          onPressed: () {
            setState(() {
              if (enteredPin.length < 4) {
                enteredPin += number.toString();
                if (enteredPin.length == 4) {
                  _checkPin();
                }
              }
            });
          },
          child: BoldText(
            text: number.toString(),
            fontSize: 24,
          )),
    );
  }

  void _checkPin() {
    if (enteredPin == originalPassword) {
    } else {
      setState(() {
        isError = true;
      });
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          enteredPin = '';
          isError = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Spacer(),
            const Center(
                child: BoldText(
              text: "Hello!",
              fontSize: 24,
            )),
            const SizedBox(
              height: 50,
            ),
            // enter code area
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Container(
                  margin: const EdgeInsets.all(6.0),
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isError
                        ? Colors.red
                        : index < enteredPin.length
                            ? LightColors.primary
                            : Colors.grey.withOpacity(.5),
                  ),
                );
              }),
            ),
            const SizedBox(
              height: 85,
            ),
            // digits area
            for (var i = 0; i < 3; ++i)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                    (index) => numberButton(1 + 3 * i + index),
                  ).toList(),
                ),
              ),
            // digit 0 and remove button area
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextButton(onPressed: null, child: SizedBox()),
                  numberButton(0),
                  Padding(
                    padding: const EdgeInsets.only(top: 38, left: 8, right: 10),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (enteredPin.isNotEmpty) {
                            enteredPin =
                                enteredPin.substring(0, enteredPin.length - 1);
                          }
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 55,
            )
          ],
        ),
      ),
    );
  }
}
