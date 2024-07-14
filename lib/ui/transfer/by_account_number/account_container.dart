import 'package:flutter/material.dart';

class AccountContainer extends StatefulWidget {
  const AccountContainer({super.key});

  @override
  State<AccountContainer> createState() => _AccountContainerState();
}

class _AccountContainerState extends State<AccountContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
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
                      child: const Text(
                        "Choose a Card",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 16),
                      child: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ),
                ],
              ),
            ],
          )),
          Container(
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
