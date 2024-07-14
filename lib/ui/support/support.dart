import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uzum/ui/support/widgets/input_widget.dart';
import 'package:uzum/ui/support/widgets/message_widget.dart';
import 'package:uzum/ui/theme/components.dart';
import 'package:uzum/ui/theme/components/secondary_text.dart';

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

                  if (state.messages.isEmpty)
                    ...[SecondaryText(
                      AppLocalizations.of(context)!.support_default,
                      textAlign: TextAlign.center,
                      fontSize: 16,
                    ),
                      const Spacer(),
                    ],
                  const SizedBox(height: 12),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: state.messages.map((e) => MessageWidget(message: e)).toList(),
                      ),
                    ),
                  ),
                  const InputWidget(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}