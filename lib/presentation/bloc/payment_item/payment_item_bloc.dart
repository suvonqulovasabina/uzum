import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:uzum/presentation/bloc/payment_item/payment_item_data.dart';

import '../../../utils/status.dart';

part 'payment_item_event.dart';
part 'payment_item_state.dart';

class PaymentItemBloc extends Bloc<PaymentItemEvent, PaymentItemState> {
  PaymentItemBloc() : super(PaymentItemState.inital()) {
    on<LoadPaymentItemEvent>((event, emit) {
      emit(PaymentItemState(status: Status.loading, data: const []));

      List<PaymentItemData> data = switch(event.name){
        '' => [],
      "Network" => [],
      "Restaurants" => [],
      "Market" => [],
      "Utilities" => [],
      "Medicine" => [],
      "Providers" => paymentProvides,
      "Education" => [],
      "Entertainment" => [],
      "Transport" => [],
      "TV" => [],
      "Telephony" => [],
      "Budget" => [],
      "Loans" => [],
      "Sports" => [],
      "Tourism" => [],
      "Insurance" => [],
      "Charity" => [],
      "Games" => paymentGames..shuffle(),
      "Services" => [],
      "Oriflame" => [],
      "Advocacy" => [],
      "Mail" => [],
      "Housing" => [],
      "Hostings" => [],
      "Coworking" => [],
      "Brokers" => [],
      "Others" => [],
        // TODO: Handle this case.
        _  => [],
      };

      emit(PaymentItemState(status: Status.success, data: data));

    });
  }
}
