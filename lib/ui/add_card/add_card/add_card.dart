import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'components/components.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  final cardNumberController = TextEditingController();
  final expController = TextEditingController();

  @override
  void dispose() {
    cardNumberController.dispose();
    expController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yangi karta", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AddCardTextField(
            controller: cardNumberController,
            onPressed: () async {
              List<String>? val = await context.pushNamed('scanCard');

              if (!context.mounted) return;

              cardNumberController.text = val?[0] ?? '';
              expController.text = val?[1] ?? '';

              print('hello : ${cardNumberController.text}');
            },
          ),
          const SizedBox(height: 16),
          ExpDateField(expController: expController, image: ""),
          const SizedBox(height: 32),
          const ItemImage(
              text: "Siz Uzum Bank "
                  "akauntingizdagi kabi SMS -"
                  " xabar raqamiulanan"
                  " kartalarni qoshishingiz mumkun",
              image: "assets/images/card.png"),
          const SizedBox(
            height: 32,
          ),
          const ItemImage(
            text: "Istalgan bankning Uzcard va Humo.Kapitalbankdan Visa va Mastercard",
            image: "assets/images/card.png",
          ),
          const Spacer(),
          const AddButton()
        ],
      ),
    );
  }
}
