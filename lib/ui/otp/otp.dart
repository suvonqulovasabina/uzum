import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uzum/ui/theme/light_colors.dart';
import 'package:uzum/utils/string_extension.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

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
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('SMS was sent', style: TextStyle(fontSize: 24)),
            Text('+998903553620'.toPhoneNumber(), style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
