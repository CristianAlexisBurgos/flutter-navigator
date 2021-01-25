import 'package:app_movil/src/shared/ui/widgets/drawer_widget.dart';

import '../widgets/frequent_payment/dynamic_form.widget.dart';
import '../widgets/frequent_payment/show_frequent_payment_widget.dart';
import 'package:flutter/material.dart';

class FrequentPaymentScreen extends StatefulWidget {
  @override
  _FrequentPaymentScreenState createState() =>
      new _FrequentPaymentScreenState();
}

class _FrequentPaymentScreenState extends State<FrequentPaymentScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Pagos'),
      // ),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          children: [
            ShowFrequentPaymentWidget(),
            DynamicFormWidget(formKey: _formKey),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        selectedItemColor: Colors.grey.shade600,
        onTap: (int index) => {
          if (index > 0)
            Navigator.of(context)
                .pushNamed('/select-debt', arguments: 'argumento'),
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Atras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Siguiente',
          ),
        ],
      ),
      // drawer: DrawerWidget(),
    );
  }
}
