import '../../../application/bloc/frequent_payment_bloc.dart';
import '../../../application/provider/frequent_payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ShowFrequentPaymentWidget extends StatelessWidget {
  FrequentPaymentBloc _bloc;
  Future<void> _loadPlaceholder(context) async {
    await _bloc.getJsonPlaceHolderApi(context);
  }

  @override
  Widget build(BuildContext context) {
    _bloc = new FrequentPaymentBloc(context: context);
    FrequentPaymentProvider _provider =
        Provider.of<FrequentPaymentProvider>(context);
    return FutureBuilder(
      future: _loadPlaceholder(context),
      builder: (context, snapshot) {
        if (_provider.getPlaceholders.isNotEmpty) {
          return ListView(
            shrinkWrap: true,
            children: _provider.getPlaceholders.map((e) {
              return Text(e.id.toString());
            }).toList(),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
