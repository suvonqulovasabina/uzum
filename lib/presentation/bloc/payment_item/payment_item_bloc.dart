import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../ui/payment_item/payment_item_data.dart';
import '../../../utils/status.dart';

part 'payment_item_event.dart';
part 'payment_item_state.dart';

class PaymentItemBloc extends Bloc<PaymentItemEvent, PaymentItemState> {
  PaymentItemBloc() : super(PaymentItemState.inital()) {
    on<LoadPaymentItemEvent>((event, emit) {
      emit(PaymentItemState(status: Status.loading, data: const []));

      List<PaymentItemData> data = switch(event.name){
        '' => [],
        // TODO: Handle this case.
        defult  => [],
      };

    });
  }
}
