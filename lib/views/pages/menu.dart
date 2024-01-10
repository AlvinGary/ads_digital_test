part of 'pages.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NotificationsPage(),
    AddPage(),
    CartPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: _selectedIndex != 3,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '',
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: Image.asset(
                  _selectedIndex == 0
                      ? 'assets/images/menu/home_on.png'
                      : 'assets/images/menu/home_off.png',
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Image.asset('assets/images/menu/notification.png'),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(65, 87, 255, 1),
                  ),
                  child: Image.asset('assets/images/menu/add.png'),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Image.asset('assets/images/menu/cart.png'),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                },
                child: Image.asset(
                  _selectedIndex == 4
                      ? 'assets/images/menu/profile_on.png'
                      : 'assets/images/menu/profile_off.png',
                ),
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
