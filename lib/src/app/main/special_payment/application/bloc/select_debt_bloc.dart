import '../../application/services/special_payment_service.dart';

class SelectDebtBloc {
  SpecialPaymentService _service = new SpecialPaymentService();

  void getSelectDebtg() {
    _service.getSelectDebt();
  }
}
