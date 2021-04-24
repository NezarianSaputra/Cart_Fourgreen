import 'package:flutter/material.dart';

class ProductCart extends StatefulWidget {
  @override
  _ProductCartState createState() => _ProductCartState();

  final String namap;
  final String detailp;
  final String harga;

  const ProductCart({
    Key key,
    this.namap,
    this.detailp,
    this.harga,
  }) : super(key: key);
}

class _ProductCartState extends State<ProductCart> {
  int jumlah = 0;

  void tambahproduk() {
    setState(() {
      jumlah++;
    });
  }

  void kurangiproduk() {
    setState(() {
      if (jumlah != 0) {
        jumlah--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: size.height * 0.15,
        child: Row(
          children: <Widget>[
            Container(
              width: size.width * 0.30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://sumeks.co/assets/foto/2019/10/1-hidroponik-57.01-PM.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: size.width * 0.50,
              height: size.height * 0.15,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        widget.namap,
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.detailp,
                        style: TextStyle(fontSize: 15.0, color: Colors.black54),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: Text(
                        widget.harga,
                        style: TextStyle(fontSize: 15.0, color: Colors.red),
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: kurangiproduk,
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              backgroundColor: Colors.grey[400],
                            ),
                          ),
                          Container(
                              height: 30,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('$jumlah')),
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: tambahproduk,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              backgroundColor: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ],
        ));
  }
}
