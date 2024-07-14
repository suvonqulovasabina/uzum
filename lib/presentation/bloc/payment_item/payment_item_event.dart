part of 'payment_item_bloc.dart';

abstract class PaymentItemEvent {}


final class LoadPaymentItemEvent extends PaymentItemEvent{
  final String name;

  LoadPaymentItemEvent({required this.name});

}