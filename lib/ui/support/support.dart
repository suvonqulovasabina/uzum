import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uzum/ui/theme/components.dart';
import 'package:uzum/ui/theme/components/secondary_text.dart';
import 'package:uzum/ui/theme/light_colors.dart';

import '../../utils/constants/assets.dart';
import 'bloc/support_bloc.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<SupportBloc, SupportState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BoldText(text: AppLocalizations.of(context)!.customer_support, height: 1, fontSize: 18),
                  SecondaryText(AppLocalizations.of(context)!.online),
                  const Spacer(),
                  SecondaryText(
                    AppLocalizations.of(context)!.support_default,
                    textAlign: TextAlign.center,
                    fontSize: 16,
                  ),
                  const SizedBox(height: 12),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: LightColors.surfaceContainer,
                          ),
                          child: Image.asset(Assets.icPaperClip, height: 24, width: 24),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 12, right: 48),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: LightColors.surfaceContainer,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextField(
                                  controller: state.controller,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 4,
                                  onChanged: (String value) {
                                    context.read<SupportBloc>().add(SupportTextChanged(value));
                                  },
                                  minLines: 1,
                                  style: const TextStyle(fontFamily: UzumFontFamily.medium),
                                  decoration: InputDecoration(
                                    hintText: AppLocalizations.of(context)!.write_a_message,
                                    hintStyle: const TextStyle(fontFamily: UzumFontFamily.medium),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 12,
                                child: Visibility(
                                  visible: state.controller.text.isNotEmpty,
                                  child: GestureDetector(
                                    onTap: () {
                                      // TODO ON SEND MESSAGE
                                    },
                                    child: Image.asset(Assets.icSendMessage, height: 24, width: 24),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
