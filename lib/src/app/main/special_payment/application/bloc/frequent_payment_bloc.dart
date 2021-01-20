import '../../application/provider/frequent_payment_provider.dart';
import '../../application/services/special_payment_service.dart';
import '../../domain/models/frequent_payment_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class FrequentPaymentBloc {
  SpecialPaymentService _service = new SpecialPaymentService();
  FrequentPaymentProvider _provider;

  FrequentPaymentBloc({Key key, @required context}) {
    _provider = Provider.of<FrequentPaymentProvider>(context);
  }

  List<FrequentPaymentModel> getFrequentPayment() {
    return _service.getFrequentPayment();
  }

  Future<void> getJsonPlaceHolderApi(context) async {
    var placeholders = _provider.getPlaceholders;

    if (placeholders.isEmpty) {
      var response = await _service.getJsonPlaceHolderApi();
      _provider.setPlaceholders = response;
    }
  }
}
