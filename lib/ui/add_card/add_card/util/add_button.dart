
import 'package:flutter/cupertino.dart';

import '../../../theme/light_colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 46,
      margin: EdgeInsets.only(left: 16,right: 16,bottom: 56),

      decoration: BoxDecoration(
        color:LightColors.primary,
        borderRadius: BorderRadius.circular(16)
      ),
      child: const Center(
        child: Text("Keyingisi",style: TextStyle(
          color: LightColors.white2,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
