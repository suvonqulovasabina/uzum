import 'package:flutter/material.dart';

class AccountContainer2 extends StatefulWidget {
  const AccountContainer2({super.key});

  @override
  State<AccountContainer2> createState() => _AccountContainer2State();
}

class _AccountContainer2State extends State<AccountContainer2> {
  var text = InputDecoration();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Text("jonativchi"),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/refresh.png",
                                  width: 20,
                                  height: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Hisob raqamni kiriting",
                        hoverColor: Colors.grey,hintStyle: TextStyle(
                        color: Colors.grey
                      )
                          ),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.only(left: 0),
                      child: const Row(
                        children: [
                          SizedBox(width: 4,),
                          Icon(Icons.credit_card_outlined),
                          SizedBox(width: 16,),
                          Icon(Icons.document_scanner_sharp),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
        ],
      ),
    );
  }
}
