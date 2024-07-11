import 'package:flutter/material.dart';
import 'package:uzum/ui/add_card/add_card/util/add_button.dart';
import 'package:uzum/ui/add_card/add_card/util/add_card_text_fild.dart';
import 'package:uzum/ui/add_card/add_card/util/card_text_fild.dart';
import 'package:uzum/ui/add_card/add_card/util/item_image.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.arrow_back_rounded),
            SizedBox(
              width: 8,
            ),
            Text(
              "Yangi karta",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AddCardTextField(),
          SizedBox(
            height: 16,
          ),
          AddCardTextFild(text: "",image: "",),
          SizedBox(height: 32,),
          ItemImage(text: "Siz Uzum Bank "
              "akauntingizdagi kabi SMS -"
              " xabar raqamiulanan"
              " kartalarni qoshishingiz mumkun",
          image: "assets/images/card.png",),
          SizedBox(height: 32,),
          ItemImage(text: "Istalgan bankning Uzcard va Humo.Kapitalbankdan Visa va Mastercard",
            image: "assets/images/card.png",),
          Spacer(),
          AddButton()
        ],
      ),
    );
  }
}
