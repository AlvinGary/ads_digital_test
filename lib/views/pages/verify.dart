part of 'pages.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  String otp = '';

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
                  Navigator.pushReplacementNamed(context, '/createaccount');
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
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Enter the verify code",
                              style: TextStyle(
                                  color: Color.fromRGBO(9, 15, 71, 1),
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  "We just send you a verification code via phone \n +62 821 39 488 953",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(9, 15, 71, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                            SizedBox(height: 12),
                            PinCodeTextField(
                              appContext: context,
                              length: 6,
                              obscureText: false,
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 50,
                                fieldWidth: 40,
                                activeFillColor: Colors.transparent,
                                inactiveFillColor: Colors.transparent,
                                selectedFillColor: Colors.transparent,
                                selectedColor: Colors.black,
                                inactiveColor: Colors.grey,
                                activeColor: Colors.grey,
                              ),
                              textStyle: TextStyle(fontSize: 26),
                              hintCharacter: '0',
                              hintStyle: TextStyle(fontSize: 26),
                              enableActiveFill: true,
                              onChanged: (value) {
                                otp = value;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    width: 330,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, '/loginsuccess');
                      },
                      child: Text(
                        'SUBMIT CODE',
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
                  SizedBox(height: 22),
                  Text(
                    "The verify code will expire in 00:59",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 4),
                  TextButton(
                    onPressed: () {
                      //blank
                    },
                    child: Text(
                      "Resend Code",
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
