part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/homescreen/homebg.png'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth),
            ),
            child: Text(''),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 50, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/homescreen/home_photo.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                            'assets/images/homescreen/notification_home.png'),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/cart');
                          },
                          icon: Image.asset(
                              'assets/images/homescreen/cart_home.png')),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 26, top: 12, right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Lorem',
                          style: TextStyle(
                            fontFamily: 'Overpass-bold',
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        Text(
                          'Welcome to Apotech',
                          style: TextStyle(
                            fontFamily: 'Overpass',
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        SizedBox(height: 12),
                        Material(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              hintText: 'Search Medicine & Healthcare products',
                              prefixIcon: Icon(
                                Icons.search,
                                size: 24,
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Top Categories',
                          style: TextStyle(
                            fontFamily: 'Overpass',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color.fromRGBO(9, 15, 71, 1),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 120,
                          width: double.infinity,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Material(
                                  elevation: 2,
                                  shadowColor: Colors.black38,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Material(
                                          color:
                                              Color.fromRGBO(255, 149, 152, 1),
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Image.asset(
                                            'assets/images/homescreen/dental_icon.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text('Dental',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Material(
                                  elevation: 2,
                                  shadowColor: Colors.black38,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Material(
                                          color:
                                              Color.fromRGBO(25, 229, 165, 1),
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.pushReplacementNamed(
                                                  context, '/category');
                                            },
                                            icon: Image.asset(
                                              'assets/images/homescreen/wellness_icon.png',
                                              height: 35,
                                              width: 35,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text('Wellness',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Material(
                                  elevation: 2,
                                  shadowColor: Colors.black38,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Material(
                                          color:
                                              Color.fromRGBO(255, 192, 111, 1),
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Image.asset(
                                            'assets/images/homescreen/homeo_icon.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text('Homeo',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Material(
                                  elevation: 2,
                                  shadowColor: Colors.black38,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Material(
                                          color:
                                              Color.fromRGBO(77, 183, 255, 1),
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Image.asset(
                                            'assets/images/homescreen/eyecare_icon.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text('Eye Care',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Material(
                                  elevation: 2,
                                  shadowColor: Colors.black38,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Material(
                                          color:
                                              Color.fromRGBO(130, 130, 130, 1),
                                          elevation: 3,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40),
                                          ),
                                          child: Image.asset(
                                            'assets/images/homescreen/skinhair_icon.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text('Skin & Hair',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 11)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              width: 330,
                              height: 200,
                              child: Image.asset(
                                  'assets/images/homescreen/home_ads.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Deals of the Day',
                                style: TextStyle(
                                  fontFamily: 'Overpass',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(9, 15, 71, 1),
                                ),
                              ),
                              Text(
                                'More',
                                style: TextStyle(
                                  fontFamily: 'Overpass',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color.fromRGBO(0, 106, 255, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 320,
                          width: double.infinity,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Material(
                                  elevation: 2,
                                  shadowColor: Colors.black38,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Material(
                                          color:
                                              Color.fromRGBO(238, 238, 240, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            'assets/images/homescreen/home_product.png',
                                            height: 200,
                                            width: 200,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, top: 8),
                                            child: Text(
                                              'Accu-check Active\nTest Strip',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      9, 15, 71, 1),
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Rp 112.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(
                                                        9, 15, 71, 1),
                                                    fontSize: 14),
                                              ),
                                              Container(
                                                height: 30,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: TextButton.icon(
                                                  onPressed: () {},
                                                  icon: Image.asset(
                                                      'assets/images/homescreen/star.png',
                                                      height: 30,
                                                      width: 30),
                                                  label: Text(
                                                    '4.2',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 255, 255, 1),
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 13),
                                                  ),
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  30),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  30),
                                                        ),
                                                      ),
                                                    ),
                                                    backgroundColor:
                                                        MaterialStatePropertyAll<
                                                            Color>(
                                                      Color.fromRGBO(
                                                          255, 192, 0, 1),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                child: Material(
                                  elevation: 2,
                                  shadowColor: Colors.black38,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 200,
                                    width: 200,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Material(
                                          color:
                                              Color.fromRGBO(238, 238, 240, 1),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(
                                            'assets/images/homescreen/home_product2.png',
                                            height: 200,
                                            width: 200,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, top: 8),
                                            child: Text(
                                              'Omron HEM-8712\nBP Monitor',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      9, 15, 71, 1),
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 8),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Rp 150.000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(
                                                        9, 15, 71, 1),
                                                    fontSize: 14),
                                              ),
                                              Container(
                                                height: 30,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: TextButton.icon(
                                                  onPressed: () {},
                                                  icon: Image.asset(
                                                      'assets/images/homescreen/star.png',
                                                      height: 30,
                                                      width: 30),
                                                  label: Text(
                                                    '4.2',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            255, 255, 255, 1),
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 13),
                                                  ),
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all<
                                                            RoundedRectangleBorder>(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  30),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  30),
                                                        ),
                                                      ),
                                                    ),
                                                    backgroundColor:
                                                        MaterialStatePropertyAll<
                                                            Color>(
                                                      Color.fromRGBO(
                                                          255, 192, 0, 1),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18, top: 8),
                          child: Text(
                            'Featured Brands',
                            style: TextStyle(
                              fontFamily: 'Overpass',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color.fromRGBO(9, 15, 71, 1),
                            ),
                          ),
                        ),
                        Container(
                            height: 180,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Material(
                                    shadowColor: Colors.black38,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Material(
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Image.asset(
                                              'assets/images/homescreen/himalaya.png',
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Himalaya Wellness',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    9, 15, 71, 1),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Material(
                                    shadowColor: Colors.black38,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Material(
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Image.asset(
                                              'assets/images/homescreen/accu-chek.png',
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Accu-Chek',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    9, 15, 71, 1),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Material(
                                    shadowColor: Colors.black38,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Material(
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Image.asset(
                                              'assets/images/homescreen/vlcc.png',
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Vlcc',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    9, 15, 71, 1),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Material(
                                    shadowColor: Colors.black38,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Material(
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Image.asset(
                                              'assets/images/homescreen/protinex.png',
                                              height: 80,
                                              width: 80,
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Protinex',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    9, 15, 71, 1),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
