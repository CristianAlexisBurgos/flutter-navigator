import '../../domain/models/json_placeholder_post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import '../../domain/models/frequent_payment_model.dart';

class SpecialPaymentRepository {
  String getSelectDebt() {
    return 'Deuda seleccionada repositorio';
  }

  List<FrequentPaymentModel> getFrequentPayment() {
    List<FrequentPaymentModel> payments = [
      new FrequentPaymentModel(id: 1, name: 'Payment 1', mount: 20),
      new FrequentPaymentModel(id: 1, name: 'Payment 1', mount: 20),
      new FrequentPaymentModel(id: 2, name: 'Payment 1', mount: 20)
    ];
    return payments;
  }

  Future<List<JsonPlaceholderPost>> getJsonPlaceholder() async {
    String uri = 'https://jsonplaceholder.typicode.com/posts';
    List<JsonPlaceholderPost> placeholders = [];
    int maxItem = 0;

    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      List<dynamic> jsonResponse = convert.jsonDecode(response.body);
      jsonResponse.map((json) {
        if (maxItem <= 9) {
          JsonPlaceholderPost placeholderPost =
              JsonPlaceholderPost.fromJson(json);
          placeholders.add(placeholderPost);
        }
        maxItem++;
      }).toList();
      return placeholders;
    } else
      throw "Request failed";
  }
}
