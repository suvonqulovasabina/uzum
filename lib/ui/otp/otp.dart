import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uzum/ui/theme/components.dart';
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
  final _focus = FocusNode();

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
          BoldText(
            text: AppLocalizations.of(context)!.sms_is_not_coming,
            color: LightColors.primary,
            onClick: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BoldText(text: 'SMS was sent', fontSize: 24, height: 1.5),
            BoldText(text: widget.phoneNumber.toPhoneNumber(), fontSize: 24, height: 1.5),
            const SizedBox(height: 24),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey.shade200,
                    ),
                    margin: const EdgeInsets.all(4),
                    height: 56,
                    width: 42,
                    alignment: Alignment.center,
                    child: TextFormField(
                      autofocus: index == 0,
                      focusNode: index == 4 ? _focus : null,
                      controller: _controllers[index],
                      onChanged: (String? value) {
                        if (value != null && value.length == 1 && index == 4) {
                          String otp = _controllers.map((controller) => controller.text).join();
                          _focus.unfocus();
                          if (otp.length == 5) print('otp: $otp');
                          // TODO Send to API
                        } else if (value != null && value.length == 1 && index < 4) {
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
            const SizedBox(height: 36),
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
          ],
        ),
      ),
    );
  }
}
