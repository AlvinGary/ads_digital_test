part of 'pages.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 6, top: 28),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/menu');
                    },
                    icon:
                        Image.asset('assets/images/loginscreen/back_icon.png'),
                    label: Text(
                      'Diabetes Care',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color.fromRGBO(9, 15, 71, 1),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 350,
                  height: 150,
                  child: Image.asset('assets/images/homescreen/home_ads.png')),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 18, top: 8, left: 32),
                child: Text(
                  'Diabetic Diet',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Material(
                      shadowColor: Colors.black38,
                      color: Color.fromRGBO(245, 247, 250, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 200,
                        width: 120,
                        child: Column(
                          children: [
                            Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/images/category/category_diet.png',
                                height: 120,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 8),
                                child: Text(
                                  'Sugar\nSubstitute',
                                  style: TextStyle(
                                      color: Color.fromRGBO(9, 15, 71, 1),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Material(
                      shadowColor: Colors.black38,
                      color: Color.fromRGBO(245, 247, 250, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 200,
                        width: 120,
                        child: Column(
                          children: [
                            Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/images/category/category_diet2.png',
                                height: 120,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 8),
                                child: Text(
                                  'Juice &\nVinegars',
                                  style: TextStyle(
                                      color: Color.fromRGBO(9, 15, 71, 1),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Material(
                      shadowColor: Colors.black38,
                      color: Color.fromRGBO(245, 247, 250, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 200,
                        width: 120,
                        child: Column(
                          children: [
                            Material(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/images/category/category_diet3.png',
                                height: 120,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 8),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 8),
                                child: Text(
                                  'Vitamins\nMedicines',
                                  style: TextStyle(
                                      color: Color.fromRGBO(9, 15, 71, 1),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ),
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
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 18, top: 8, left: 32),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/product');
                  },
                  child: Text(
                    'All Products',
                    style: TextStyle(
                      fontFamily: 'Overpass',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color.fromRGBO(9, 15, 71, 1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
