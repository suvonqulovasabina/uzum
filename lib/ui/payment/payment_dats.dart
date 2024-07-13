import 'package:flutter/material.dart';

class PaymentData {
  final String name;
  final IconData icon;
  final int count;

  PaymentData(this.name, this.icon, this.count);
}

List<PaymentData> datas = [
  PaymentData("Network", Icons.phone_iphone, 7),
  PaymentData("Restaurants", Icons.restaurant, 1234),
  PaymentData("Market", Icons.shopping_cart, 3636),
  PaymentData("Utilities", Icons.home_outlined, 25),
  PaymentData("Medicine", Icons.medical_services, 437),
  PaymentData("Providers", Icons.wifi, 51),
  PaymentData("Education", Icons.school_outlined, 650),
  PaymentData("Entertainment", Icons.theater_comedy_outlined, 256),
  PaymentData("Transport", Icons.directions_bus, 358),
  PaymentData("TV", Icons.tv_outlined, 29),
  PaymentData("Telephony", Icons.phone, 22),
  PaymentData("Budget", Icons.home_work_outlined, 51),
  PaymentData("Loans", Icons.credit_card, 86),
  PaymentData("Sports", Icons.sports_baseball, 91),
  PaymentData("Tourism", Icons.airplanemode_active, 237),
  PaymentData("Insurance", Icons.health_and_safety, 173),
  PaymentData("Charity", Icons.volunteer_activism, 93),
  PaymentData("Games", Icons.sports_esports, 36),
  PaymentData("Services", Icons.language, 193),
  PaymentData("Oriflame", Icons.circle_outlined, 1),
  PaymentData("Advocacy", Icons.balance, 17),
  PaymentData("Mail", Icons.mail, 72),
  PaymentData("Housing", Icons.home, 7),
  PaymentData("Hostings", Icons.cloud_queue, 6),
  PaymentData("Coworking", Icons.work, 4),
  PaymentData("Brokers", Icons.people, 28),
  PaymentData("Others", Icons.more_horiz, 0),
];