part of 'pages.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 80,
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
                            'assets/images/loginscreen/welcome.png')),
                    SizedBox(height: 32),
                    Text('Welcome to Apotech',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Overpass',
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Do you want some help with your \n health to get better life?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Overpass',
                            fontSize: 16,
                            fontWeight: FontWeight.w300)),
                    SizedBox(height: 28),
                    SizedBox(
                      width: 330,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Blank
                        },
                        child: Text(
                          'SIGN UP WITH EMAIL',
                          style: TextStyle(
                              fontFamily: 'Overpass-bold',
                              fontWeight: FontWeight.w700),
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
                    SizedBox(height: 8),
                    SizedBox(
                      width: 330,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Blank
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                              'assets/images/loginscreen/facebook_icon.png'),
                        ),
                        label: Text(
                          'CONTINUE WITH FACEBOOK',
                          style: TextStyle(
                              fontFamily: 'Overpass-bold',
                              fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color.fromRGBO(9, 15, 71, 0.75),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: 330,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Blank
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image.asset(
                              'assets/images/loginscreen/google_icon.png'),
                        ),
                        label: Text(
                          'CONTINUE WITH GMAIL',
                          style: TextStyle(
                              fontFamily: 'Overpass-bold',
                              fontWeight: FontWeight.w700),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Color.fromRGBO(9, 15, 71, 0.75),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
