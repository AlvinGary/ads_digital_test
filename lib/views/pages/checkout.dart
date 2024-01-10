part of 'pages.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String? _selectedAddress;
  String? _selectedPayment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 6, top: 28),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/cart');
                    },
                    icon:
                        Image.asset('assets/images/loginscreen/back_icon.png'),
                    label: Text(
                      'Checkout',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color.fromRGBO(9, 15, 71, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 items in your cart',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(9, 15, 71, 0.45),
                    ),
                  ),
                  Text(
                    'TOTAL',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(9, 15, 71, 0.45),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Rp 185.000',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Delivery Address',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 220,
                child: ListView(
                  children: [
                    RadioListTile(
                      title: Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(9, 15, 71, 1)),
                      ),
                      subtitle: Text('(205) 555-024 \n1786 Wheeler Bridge'),
                      value: 'home',
                      groupValue: _selectedAddress,
                      fillColor: MaterialStatePropertyAll(
                        Color.fromRGBO(65, 87, 255, 1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _selectedAddress = value;
                        });
                      },
                      secondary: IconButton(
                        icon: Image.asset('assets/images/cartscreen/edit.png'),
                        onPressed: () {},
                      ),
                      contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                    ),
                    SizedBox(height: 8),
                    RadioListTile(
                      title: Text(
                        'Office',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(9, 15, 71, 1)),
                      ),
                      subtitle:
                          Text('(205) 555-024 \n1786 w Dallas St underfield'),
                      value: 'office',
                      groupValue: _selectedAddress,
                      fillColor: MaterialStatePropertyAll(
                        Color.fromRGBO(65, 87, 255, 1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _selectedAddress = value;
                        });
                      },
                      secondary: IconButton(
                        icon: Image.asset('assets/images/cartscreen/edit.png'),
                        onPressed: () {},
                      ),
                      contentPadding: EdgeInsets.fromLTRB(8, 12, 8, 12),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, top: 12),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text(
                    'Add Address',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(65, 87, 255, 1))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Payment Method',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: ListView(
                    children: [
                      RadioListTile(
                        title: Text(
                          'Credit Card',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(9, 15, 71, 1)),
                        ),
                        value: 'credit_card',
                        groupValue: _selectedPayment,
                        fillColor: MaterialStatePropertyAll(
                          Color.fromRGBO(65, 87, 255, 1),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedPayment = value;
                          });
                        },
                        secondary: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                                'assets/images/cartscreen/credit.png')),
                        selected: _selectedPayment == 'credit_card',
                        controlAffinity: ListTileControlAffinity.trailing,
                        contentPadding: EdgeInsets.only(left: 16, right: 16),
                      ),
                      RadioListTile(
                        title: Text(
                          'Paypal',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(9, 15, 71, 1)),
                        ),
                        value: 'paypal',
                        groupValue: _selectedPayment,
                        fillColor: MaterialStatePropertyAll(
                          Color.fromRGBO(65, 87, 255, 1),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedPayment = value;
                          });
                        },
                        secondary: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                                'assets/images/cartscreen/paypal.png')),
                        selected: _selectedPayment == 'paypal',
                        controlAffinity: ListTileControlAffinity.trailing,
                        contentPadding: EdgeInsets.only(left: 16, right: 16),
                      ),
                      RadioListTile(
                        title: Text(
                          'Google Pay',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(9, 15, 71, 1)),
                        ),
                        value: 'google_pay',
                        groupValue: _selectedPayment,
                        fillColor: MaterialStatePropertyAll(
                          Color.fromRGBO(65, 87, 255, 1),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedPayment = value;
                          });
                        },
                        secondary: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                                'assets/images/loginscreen/google_icon.png')),
                        selected: _selectedPayment == 'google_pay',
                        controlAffinity: ListTileControlAffinity.trailing,
                        contentPadding: EdgeInsets.only(left: 16, right: 16),
                      ),
                      RadioListTile(
                        title: Text(
                          'Credit Card',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(9, 15, 71, 1)),
                        ),
                        value: 'apple_pay',
                        groupValue: _selectedPayment,
                        fillColor: MaterialStatePropertyAll(
                          Color.fromRGBO(65, 87, 255, 1),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _selectedPayment = value;
                          });
                        },
                        secondary: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset(
                                'assets/images/cartscreen/apple.png')),
                        selected: _selectedPayment == 'apple_pay',
                        controlAffinity: ListTileControlAffinity.trailing,
                        contentPadding: EdgeInsets.only(left: 16, right: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/success');
                    },
                    child: Text(
                      'Pay Now Rp 185.000',
                      style: TextStyle(
                          fontFamily: 'Overpass-bold',
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(65, 87, 255, 1),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
