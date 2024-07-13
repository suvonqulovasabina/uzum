import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uzum/ui/theme/components.dart';
import 'package:uzum/ui/theme/light_colors.dart';

class HistoryTab extends StatefulWidget {
  const HistoryTab({super.key});

  @override
  State<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.white3,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          date('02.06.2024'),
          for(var i = 0; i < 3; ++i)transactionItem(context, '15:23', -1700)
        ],
      ),
    );
  }

  Widget date(String date) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 15, bottom: 15, top: 15,),
      child: SemiBoldText(text: date, fontSize: 12, color: Colors.black, height: 1,),
    );
  }

  Widget transactionItem(BuildContext context, String time, int amount) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/ic_operations_atto.svg",
            height: 56,
            width: 56,
            color: Colors.blueAccent,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BoldText(
                      text: 'atto01169NKA',
                      fontSize: 14,
                    ),
                    transferStatus(),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SemiBoldText(
                      text: time,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    
                    
                    transferAmount(amount)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget transferAmount(int amount) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [

        SemiBoldText(
          text: '$amount,00',
          color: amount < 0 ? Colors.red : Colors.green,
          fontSize: 16,
          height: 1,
        ),

       SemiBoldText(
          text: ' UZS',
          fontSize: 10,
          color: amount <0 ? Colors.red : Colors.green,
          height: 1,
        )
      ],
    );
  }

  Widget transferStatus() {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 13),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent.withOpacity(0.4),
        borderRadius: BorderRadius.circular(6)
      ),
      child: const MediumText(
        text: "To'lov",
        fontSize: 12,
        height: .1,
        color: Colors.deepPurple,
      ),
    );
  }
}
