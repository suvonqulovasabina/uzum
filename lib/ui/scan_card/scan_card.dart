import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ml_card_scanner/ml_card_scanner.dart';

class ScanCard extends StatefulWidget {
  const ScanCard({super.key});

  @override
  State<ScanCard> createState() => _ScanCardState();
}

class _ScanCardState extends State<ScanCard> {
  final ScannerWidgetController _controller = ScannerWidgetController();
  final ValueNotifier<CardInfo?> _cardInfo = ValueNotifier(null);

  @override
  void initState() {
    super.initState();
    _controller
      ..setCardListener(_onListenCard)
      ..setErrorListener(_onError);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ScannerWidget(
              oneShotScanning: false,
              controller: _controller,
              overlayOrientation: CardOrientation.landscape,
              cameraResolution: CameraResolution.max,
            ),
            Positioned(
              child: IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back_outlined, color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Container(
                  margin: const EdgeInsets.all(24),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.grey.shade600.withAlpha(100), borderRadius: BorderRadius.circular(12)),
                  child: const Text("Ввести вручную", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            ValueListenableBuilder<CardInfo?>(
              valueListenable: _cardInfo,
              builder: (context, card, child) {
                if (card != null) {
                  final cardNumber = card.number;
                  final expiry = card.expiry;

                  print("$cardNumber $expiry");

                  if (cardNumber.length == 16 && expiry.length == 5) {
                    context.pop([cardNumber, expiry]);
                  }
                }
                return const Center();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller
      ..removeCardListeners(_onListenCard)
      ..removeErrorListener(_onError)
      ..dispose();
    super.dispose();
  }

  void _onListenCard(CardInfo? value) {
    _cardInfo.value = value;
  }

  void _onError(ScannerException exception) {
    print('Error: ${exception.message}');
  }
}
