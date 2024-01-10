part of 'pages.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final _createKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlNum = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();
  bool isHide = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlNum.dispose();
    ctrlEmail.dispose();
    ctrlPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              key: _createKey,
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Create your account",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(9, 15, 71, 1),
                                fontSize: 26,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: ctrlName,
                      decoration: InputDecoration(
                        labelText: 'Your Name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username must be filled';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: ctrlNum,
                      decoration: InputDecoration(
                        labelText: 'Mobile Number',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone number must be filled';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: ctrlEmail,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value == null || value.isNotEmpty) {
                          return !EmailValidator.validate(value.toString())
                              ? 'Email is not valid!'
                              : null;
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: ctrlPass,
                      obscureText: isHide,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                              isHide ? Icons.visibility_off : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.only(right: 10),
                      ),
                      validator: (value) {
                        return value!.length < 4
                            ? 'Password must be filled'
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
                        if (_createKey.currentState!.validate()) {
                          setState(() {
                            Navigator.pushReplacementNamed(context, '/verify');
                          });
                        }
                      },
                      child: Text(
                        'CREATE ACCOUNT',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          icon: Image.asset(
                              'assets/images/loginscreen/back_icon2.png')),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                        child: Text(
                          "Already have account? Login",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
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
