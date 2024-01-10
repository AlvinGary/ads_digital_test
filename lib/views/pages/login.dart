part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlPass = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlPass.dispose();
    super.dispose();
  }

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
                  Navigator.pushReplacementNamed(context, '/welcome');
                },
                icon: Image.asset('assets/images/loginscreen/back_icon.png'),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.fromLTRB(0, 48, 0, 12),
            child: Form(
              key: _loginKey,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Welcome Back!",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(9, 15, 71, 1),
                                fontSize: 26,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: ctrlName,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                                'assets/images/loginscreen/user.png')),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username must be filled';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: ctrlPass,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Padding(
                            padding: EdgeInsets.all(8),
                            child: Image.asset(
                                'assets/images/loginscreen/lock.png')),
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        contentPadding: EdgeInsets.only(right: 10),
                      ),
                      validator: (value) {
                        return value!.length < 4
                            ? 'Username must be filled'
                            : null;
                      },
                    ),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: 330,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_loginKey.currentState!.validate()) {
                          setState(() {
                            Navigator.pushReplacementNamed(context, '/menu');
                          });
                        }
                      },
                      child: Text(
                        'SIGN IN',
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
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/createaccount');
                      },
                      icon: Image.asset(
                          'assets/images/loginscreen/back_icon2.png')),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/createaccount');
                    },
                    child: Text(
                      "Don't have an account? Sign Up",
                      style: TextStyle(color: Colors.grey),
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
