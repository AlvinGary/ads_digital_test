part of 'pages.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 50, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/category');
                      },
                      icon: Image.asset(
                          'assets/images/loginscreen/back_icon.png'),
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
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/menu/notification.png'),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/cart');
                      },
                      icon: Image.asset(
                        'assets/images/menu/cart.png',
                      )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 18, top: 8, left: 32),
                child: Text(
                  'Sugar Free Gold Low Calories',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: Color.fromRGBO(9, 15, 71, 1),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 18, top: 8, left: 32),
                child: Text(
                  'Etiam mollis metus non purus',
                  style: TextStyle(
                    fontFamily: 'Overpass',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(9, 15, 71, 0.45),
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 330,
              child: Material(
                color: Color.fromRGBO(248, 248, 248, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/category/product2.png',
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Image.asset('assets/images/homescreen/ellipse2.png'),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
