import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uzum/ui/theme/light_colors.dart';
import 'package:uzum/utils/constants/assets.dart';
import 'package:uzum/utils/string_extension.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key, required this.phoneNumber});

  final String phoneNumber;

  @override
  OtpPageState createState() => OtpPageState();
}

class OtpPageState extends State<OtpPage> {
  final List<TextEditingController> _controllers = List.generate(5, (_) => TextEditingController());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        actions: [
          TextButton(
            onPressed: () {
              // TODO on Click SMS IS NOT RESPONDING
            },
            child: Text(
              AppLocalizations.of(context)!.sms_is_not_coming,
              style: const TextStyle(
                color: LightColors.primary,
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('SMS was sent', style: TextStyle(fontSize: 24)),
            Text(widget.phoneNumber.toPhoneNumber(), style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 12),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey.shade200,
                    ),
                    margin: const EdgeInsets.all(8),
                    height: 56,
                    width: 42,
                    alignment: Alignment.center,
                    child: TextFormField(
                      controller: _controllers[index],
                      onChanged: (String? value) {
                        if (value != null && value.length == 1 && index < 4) {
                          FocusScope.of(context).nextFocus();
                        } else if (value == null || value.isEmpty && index > 0) {
                          FocusScope.of(context).previousFocus();
                        }
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: UzumFontFamily.medium,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      textAlign: TextAlign.center,
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'You can send\n it again after 49 sec',
              style: TextStyle(
                fontSize: 14,
                fontFamily: UzumFontFamily.medium,
                color: Colors.grey.shade600,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                String otp = _controllers.map((controller) => controller.text).join();
                if (otp.length == 5) print('otp: $otp');
                // TODO Send to API
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: LightColors.primary),
                child: const Center(child: Text("Verify", style: TextStyle(color: Colors.white, fontSize: 18))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
