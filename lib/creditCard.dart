import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final String currency;
  final String currencyChar;
  final String number;
  final String name;
  final String brand;
  final String balance;
  final double height;
  const CreditCard(
      {Key key,
      this.currency,
      this.number,
      this.name,
      this.brand,
      this.balance,
      this.currencyChar,
      this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    range(value, x1, y1, x2, y2) => (value - x1) * (y2 - x2) / (y1 - x1) + x2;
    double opacity = range(height, 153.83628695226324, 200, 0.0, 1.0);
    Color backgroundColor = Color(0xff353A47);
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      padding: EdgeInsets.all(20),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                            width: 0.8,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            currencyChar,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        currency,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      balance,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "• $number",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Opacity(
              opacity: opacity,
              // opacity: height == 200 ? 1 : height * 100 / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Holder',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    'Jeff Aknine',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: range(height, 153.83628695226324, 200, 30, 0),
            right: 0,
            child: Text(
              "Visa",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
