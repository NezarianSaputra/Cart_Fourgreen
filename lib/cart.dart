import 'package:cart_fourgeen/components/product_cart.dart';
import 'package:flutter/material.dart';

Icon iconc = new Icon(Icons.chat_bubble_outline_rounded);
Icon icont = new Icon(Icons.shopping_cart_outlined);

class CartLayout extends StatefulWidget {
  @override
  _CartLayoutState createState() => _CartLayoutState();
}

class _CartLayoutState extends State<CartLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF04855e),
        title: Text('CART'),
        actions: [
          IconButton(
            icon: iconc,
            onPressed: () {},
          ),
          IconButton(
            icon: icont,
            onPressed: () {},
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          Container(
            height: size.height * 0.7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductCart(
                    namap: 'Vitamin Hidroponik A',
                    detailp: '7, Hot Pink',
                    harga: 'Rp.30.000,00',
                  ),
                  ProductCart(
                    namap: 'Vitamin Hidroponik A',
                    detailp: '7, Hot Pink',
                    harga: 'Rp.30.000,00',
                  ),
                  ProductCart(
                    namap: 'Vitamin Hidroponik A',
                    detailp: '7, Hot Pink',
                    harga: 'Rp.30.000,00',
                  ),
                  ProductCart(
                    namap: 'Vitamin Hidroponik A',
                    detailp: '7, Hot Pink',
                    harga: 'Rp.30.000,00',
                  ),
                  ProductCart(
                    namap: 'Vitamin Hidroponik A',
                    detailp: '7, Hot Pink',
                    harga: 'Rp.30.000,00',
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'TOTAL',
                            style:
                                TextStyle(fontSize: 10, color: Colors.black54),
                          ),
                          Text(
                            'Rp3000.000,00',
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Free Domestic Shipping',
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: RaisedButton(
                      onPressed: () {},
                      color: Color(0xFF04855e),
                      child: Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'CHECKOUT',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.play_circle_outline_rounded,
                                color: Colors.white)
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
