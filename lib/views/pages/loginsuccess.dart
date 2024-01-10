part of 'pages.dart';

class LoginSuccessPage extends StatefulWidget {
  const LoginSuccessPage({super.key});

  @override
  State<LoginSuccessPage> createState() => _LoginSuccessPageState();
}

class _LoginSuccessPageState extends State<LoginSuccessPage> {
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
                  Navigator.pushReplacementNamed(context, '/verify');
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
                    Text('Phone Number Verifivied',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(9, 15, 71, 1),
                            fontFamily: 'Overpass-bold',
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Congratulations, your phone \n number has been verified. You can \n start using the app',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Overpass',
                            fontSize: 16,
                            fontWeight: FontWeight.w300)),
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
                    'CONTINUE',
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
