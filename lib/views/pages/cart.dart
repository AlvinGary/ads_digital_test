part of 'pages.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
                      'Your cart',
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
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 items in your cart',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(9, 15, 71, 0.45),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('Add more'),
                    style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(65, 87, 255, 1))),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset('assets/images/cartscreen/cart1.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sugar free gold',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'bottle of 500 pellets',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 8),
                          Text('Rp 25.000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/cartscreen/delete.png'),
                          SizedBox(height: 20),
                          InputQty(
                            maxVal: 100,
                            initVal: 0,
                            minVal: 0,
                            steps: 1,
                            decoration: QtyDecorationProps(
                                isBordered: false,
                                borderShape: BorderShapeBtn.circle,
                                fillColor: Color.fromRGBO(242, 244, 255, 1),
                                btnColor: Color.fromRGBO(160, 171, 255, 1),
                                width: 12),
                            onQtyChanged: (val) {
                              print(val);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset('assets/images/cartscreen/cart2.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sugar free gold',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'bottle of 500 pellets',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 8),
                          Text('Rp 25.000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/cartscreen/delete.png'),
                          SizedBox(height: 20),
                          InputQty(
                            maxVal: 100,
                            initVal: 0,
                            minVal: 0,
                            steps: 1,
                            decoration: QtyDecorationProps(
                                isBordered: false,
                                borderShape: BorderShapeBtn.circle,
                                fillColor: Color.fromRGBO(242, 244, 255, 1),
                                btnColor: Color.fromRGBO(160, 171, 255, 1),
                                width: 12),
                            onQtyChanged: (val) {
                              print(val);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Image.asset(
                                'assets/images/cartscreen/coupon.png'),
                            label: Text(
                              '1 Coupon applied',
                              style: TextStyle(color: Colors.green),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                              'assets/images/cartscreen/delete.png'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 18, top: 8, right: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Summary',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Total',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(9, 15, 71, 0.45),
                            ),
                          ),
                          Text(
                            'Rp 228.800',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(9, 15, 71, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Item Discount',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(9, 15, 71, 0.45),
                            ),
                          ),
                          Text(
                            '- Rp 28.800',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(9, 15, 71, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Coupont Discount',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(9, 15, 71, 0.45),
                            ),
                          ),
                          Text(
                            '- Rp 15.800',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(9, 15, 71, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(9, 15, 71, 0.45),
                            ),
                          ),
                          Text(
                            'Free',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color.fromRGBO(9, 15, 71, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Divider(height: 0.2),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color.fromRGBO(9, 15, 71, 1),
                            ),
                          ),
                          Text(
                            'Rp 185.000',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color.fromRGBO(9, 15, 71, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 55),
                child: SizedBox(
                  width: 330,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/checkout');
                    },
                    child: Text(
                      'Place Order @ Rp 185.000',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
