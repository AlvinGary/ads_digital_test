part of 'pages.dart';

class WalktroughPage extends StatefulWidget {
  const WalktroughPage({super.key});

  @override
  State<WalktroughPage> createState() => _WalktroughPageState();
}

class _WalktroughPageState extends State<WalktroughPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
                            'assets/images/walktroughscreen/walktrough1.png')),
                    SizedBox(height: 32),
                    Text('View and buy \n Medicine online',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Overpass-bold',
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Etiam mollis metus non purus \n faucibus sollicitudin. Pellentesque \n sagittis mi. Integer.',
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/welcome');
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Image.asset('assets/images/walktroughscreen/ellipse.png'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/walktrough2');
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Color.fromRGBO(65, 87, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
