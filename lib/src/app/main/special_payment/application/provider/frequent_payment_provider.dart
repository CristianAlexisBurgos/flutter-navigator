import '../../domain/models/json_placeholder_post.dart';
import 'package:flutter/foundation.dart';

class FrequentPaymentProvider with ChangeNotifier {
  List<JsonPlaceholderPost> _placeholders = [];

  List<JsonPlaceholderPost> get getPlaceholders => _placeholders;

  set setPlaceholders(List<JsonPlaceholderPost> placeholders) {
    _placeholders = placeholders;
    notifyListeners();
  }
}
