import '../../domain/models/frequent_payment_model.dart';
import '../../domain/models/json_placeholder_post.dart';
import '../../domain/repositories/special_payment_repository.dart';

class SpecialPaymentService {
  SpecialPaymentRepository _repository = new SpecialPaymentRepository();

  String getSelectDebt() {
    return _repository.getSelectDebt();
  }

  List<FrequentPaymentModel> getFrequentPayment() {
    return _repository.getFrequentPayment();
  }

  Future<List<JsonPlaceholderPost>> getJsonPlaceHolderApi() async {
    return await _repository.getJsonPlaceholder();
  }
}
