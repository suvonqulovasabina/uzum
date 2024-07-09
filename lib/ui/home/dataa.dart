
import 'package:flutter/material.dart';
import 'package:uzum/ui/theme/light_colors.dart';

List<String> getListBanner (){
  return [

    "https://images.uzum.uz/cq2hk9b6eisq2rkegn80/main_page_banner.jpg",
  "https://images.uzum.uz/cq2ic2osarnfdo9a9ovg/main_page_banner.jpg",
    "https://images.uzum.uz/cq3nch8sarnfdo9agb10/main_page_banner.jpg",
    "https://images.uzum.uz/cpv9gv0sarnfdo99n5kg/main_page_banner.jpg",
    "https://images.uzum.uz/cq1uu835qt1gj8ddqck0/main_page_banner.jpg",
    "https://images.uzum.uz/cq1uv0r5qt1gj8ddqd1g/main_page_banner.jpg",
    "https://images.uzum.uz/cq17tl8sarnfdo9a1f00/main_page_banner.jpg",
    "https://images.uzum.uz/cpv9a28sarnfdo99n35g/main_page_banner.jpg",
    "https://images.uzum.uz/cq201735qt1gj8ddqpd0/main_page_banner.jpg",
    "https://images.uzum.uz/cq204m36eisq2rkedo40/main_page_banner.jpg",
    "https://images.uzum.uz/cq1b2pr6eisq2rke9a30/main_page_banner.jpg",
    "https://images.uzum.uz/cq15r3b5qt1gj8ddljtg/main_page_banner.jpg",
    "https://images.uzum.uz/cq14lbgsarnfdo9a0nl0/main_page_banner.jpg",
    "https://images.uzum.uz/cq14mj35qt1gj8ddlabg/main_page_banner.jpg",
    "https://images.uzum.uz/cq6fm1b5qt1gj8delvqg/main_page_banner.jpg",
    "https://images.uzum.uz/cq1ri80sarnfdo9a4t4g/main_page_banner.jpg",
    "https://images.uzum.uz/cq14vogsarnfdo9a0pgg/main_page_banner.jpg",

  ];
}
List<HomeFastModel> getFastList (){
  return [
  HomeFastModel(text: "My number", icon: Icons.phone_iphone,color: LightColors.primary),
  HomeFastModel(text: "My Home", icon: Icons.home_outlined,),
  HomeFastModel(text: "HUMO Pay", icon: Icons.paypal,),
  HomeFastModel(text: "Exchange", icon: Icons.currency_exchange,),
  HomeFastModel(text: "Deposit", icon: Icons.money_outlined,),
  HomeFastModel(text: "Loans", icon: Icons.credit_card,),
  HomeFastModel(text: "Wallets", icon: Icons.wallet_sharp,),
];}


class HomeFastModel{
  String text;
  IconData icon;
  Color? color;
  HomeFastModel({required this.text,required this.icon,this.color});
}
