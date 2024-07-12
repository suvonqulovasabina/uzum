import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utils/constants/assets.dart';
import '../../theme/light_colors.dart';
import '../bloc/support_bloc.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SupportBloc, SupportState>(
      builder: (context, state) {
        return IntrinsicHeight(
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
                            context.read<SupportBloc>().add(SendMessage(message: state.controller.text));
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
        );
      },
    );
  }
}
