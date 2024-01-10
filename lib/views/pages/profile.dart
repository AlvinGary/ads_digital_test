part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'My Profile',
        style: TextStyle(
            fontFamily: 'Overpass-bold',
            fontWeight: FontWeight.w700,
            fontSize: 18),
      )),
      body: ListView(
        children: <Widget>[
          Container(
            height: 75,
            child: UserAccountsDrawerHeader(
              accountName: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profilescreen/photo.png',
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hi, Lorem Ipsum',
                          style: TextStyle(
                              color: Color.fromRGBO(9, 28, 63, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Text(
                          'Welcome to Apotech',
                          style: TextStyle(
                              color: Color.fromRGBO(9, 28, 63, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              accountEmail: null,
              decoration: BoxDecoration(color: Colors.white, border: null),
              margin: EdgeInsets.zero,
            ),
          ),
          ListTile(
            leading:
                Image.asset('assets/images/profilescreen/privateaccount.png'),
            title: Text('Private Account'),
            trailing: Image.asset('assets/images/profilescreen/next_icon.png'),
          ),
          ListTile(
            leading: Image.asset('assets/images/profilescreen/myconsult.png'),
            title: Text('My Consults'),
            trailing: Image.asset('assets/images/profilescreen/next_icon.png'),
          ),
          ListTile(
            leading: Image.asset('assets/images/profilescreen/myorder.png'),
            title: Text('My Orders'),
            trailing: Image.asset('assets/images/profilescreen/next_icon.png'),
          ),
          ListTile(
            leading: Image.asset('assets/images/profilescreen/billing.png'),
            title: Text('Billing'),
            trailing: Image.asset('assets/images/profilescreen/next_icon.png'),
          ),
          ListTile(
            leading: Image.asset('assets/images/profilescreen/faq.png'),
            title: Text('Faq'),
            trailing: Image.asset('assets/images/profilescreen/next_icon.png'),
          ),
          ListTile(
            leading: Image.asset('assets/images/profilescreen/setting.png'),
            title: Text('Settings'),
            trailing: Image.asset('assets/images/profilescreen/next_icon.png'),
          )
        ],
      ),
    );
  }
}
