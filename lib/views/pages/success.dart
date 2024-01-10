part of 'pages.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 6, top: 28),
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/checkout');
                },
                icon: Image.asset('assets/images/loginscreen/back_icon.png'),
              ),
            ),
          ),
          Positioned(
            top: 120,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Image(
                        image: AssetImage(
                            'assets/images/loginscreen/loginsuccess.png')),
                    SizedBox(height: 32),
                    Text('Thank You',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(9, 15, 71, 1),
                            fontFamily: 'Overpass-bold',
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Your Order will be delivered with invoice \n',
                        style: TextStyle(
                          color: Color.fromRGBO(9, 15, 71, 0.45),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '#INV20231212',
                            style: TextStyle(
                              color: Color.fromRGBO(9, 15, 71, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text:
                                '. You can track the delivery \nin the order section.',
                            style: TextStyle(
                              color: Color.fromRGBO(9, 15, 71, 0.45),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(22),
              child: SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/menu');
                  },
                  child: Text(
                    'Continue Order',
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
    );
  }
}
