

import 'package:uzum/utils/constants/assets.dart';

class PaymentItemData {
  String img;
  String name;
  String? discount;

  PaymentItemData( this.img, this.name,{this.discount});
}


List<PaymentItemData> paymentProvides = [

  PaymentItemData( ProviderIcons.uzmobile,  "Uzmobile", discount:"1" ),
  PaymentItemData( ProviderIcons.comnet,  "Comnet", discount:"1" ),
  PaymentItemData( ProviderIcons.istv_internet,  "ISTV Internet", discount:"1" ),
  PaymentItemData( ProviderIcons.sky_line,  "SkyLine", discount:"1" ),
  PaymentItemData( ProviderIcons.all_net,  "AllNet", discount:"1" ),
  PaymentItemData( ProviderIcons.optikom,  "Optikom", discount:"1" ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "Sarkom Telecom", ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "Sarkom Tv", ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "Hostim Uz", ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "IPCAM.uz", ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "Nano telecom", ),
  PaymentItemData( ProviderIcons.uzmobile,  "Uzmobile", discount:"1" ),
  PaymentItemData( ProviderIcons.comnet,  "Comnet", discount:"1" ),
  PaymentItemData( ProviderIcons.istv_internet,  "ISTV Internet", discount:"1" ),
  PaymentItemData( ProviderIcons.sky_line,  "SkyLine", discount:"1" ),
  PaymentItemData( ProviderIcons.all_net,  "AllNet", discount:"1" ),
  PaymentItemData( ProviderIcons.optikom,  "Optikom", discount:"1" ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "Sarkom Telecom", ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "Sarkom Tv", ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "Hostim Uz", ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "IPCAM.uz", ),
  PaymentItemData( ProviderIcons.sarkor_telecom,  "Nano telecom", ),
];

List<PaymentItemData> paymentGames = [

  PaymentItemData(GamesIcons.freeFire, "Free Fire",discount: "3"),
  PaymentItemData(GamesIcons.pubg_mobile, "PUBG Mobile",discount: "3"),
  PaymentItemData(GamesIcons.pubgMobile_newState, "PUBG New State",discount: "3"),
  PaymentItemData(GamesIcons.pubgMobileGlobal, "PUBG Mobile Global"),
  PaymentItemData(GamesIcons.fortnite, "Fortnite"),
  PaymentItemData(GamesIcons.mobileLegends, "Mobile Legends BB",discount: "3"),
  PaymentItemData(GamesIcons.minecraft, "Minicraft",discount: "0.3"),
  PaymentItemData(GamesIcons.steam, "Steam",),
  PaymentItemData(GamesIcons.warFace, "WarFace",),
  PaymentItemData(GamesIcons.freeFire, "Free Fire",discount: "3"),
  PaymentItemData(GamesIcons.pubg_mobile, "PUBG Mobile",discount: "3"),
  PaymentItemData(GamesIcons.pubgMobile_newState, "PUBG New State",discount: "3"),
  PaymentItemData(GamesIcons.pubgMobileGlobal, "PUBG Mobile Global"),
  PaymentItemData(GamesIcons.fortnite, "Fortnite"),
  PaymentItemData(GamesIcons.mobileLegends, "Mobile Legends BB",discount: "3"),
  PaymentItemData(GamesIcons.minecraft, "Minicraft",discount: "0.3"),
  PaymentItemData(GamesIcons.steam, "Steam",),
  PaymentItemData(GamesIcons.warFace, "WarFace",),

];

List<PaymentItemData> paymentHosting =[

];