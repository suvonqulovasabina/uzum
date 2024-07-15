part of 'payment_item_bloc.dart';

class PaymentItemState extends Equatable {
  List<PaymentItemData> data;
  Status status;
  PaymentItemState ({required this.status,required this.data});

  factory PaymentItemState.inital(){
    return PaymentItemState(
      status: Status.initial,
      data: []
    );
  }

  PaymentItemState copyWith({Status? status,List<PaymentItemData> ?data })=>PaymentItemState(status: status ?? this.status,data: data ?? this.data);

  @override
  List<Object?> get props => [data,status];

}

