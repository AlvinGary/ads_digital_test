part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  final SplashDelay = 4;

  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = new Duration(seconds: SplashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WalktroughPage()));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/splashscreen/splashbg.png'))),
        alignment: Alignment.center,
        child: Image(
          image: AssetImage('assets/images/splashscreen/splashlogo.png'),
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
