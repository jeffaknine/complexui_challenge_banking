import 'package:complexui_challenge_banking/creditCard.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  final List items;
  final double shrink;
  const Carousel({Key key, this.items, this.shrink}) : super(key: key);
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _index;
  @override
  Widget build(BuildContext context) {
    range(value, x1, y1, x2, y2) => (value - x1) * (y2 - x2) / (y1 - x1) + x2;
    double height = 200;
    double viewport = 0.9;
    //hasn't reached top
    if (widget.shrink >= 0 && widget.shrink < 100) {
      viewport = range(widget.shrink, 0, 100, 0.9, 1);
    }
    if (widget.shrink >= 0 && widget.shrink < 53.6) {
      height = 200;
    }
    // has reached and reducing height
    else if (widget.shrink > 53.6 && widget.shrink < 100) {
      height = 200 - widget.shrink + 53.6;
      // viewport = range(widget.shrink, 0, 53.6, 0.9, 1);
    }
    // at the top and min height
    else {
      height = 153.83628695226324;
      viewport = 1;
    }
    return SizedBox(
      height: height,
      child: PageView.builder(
        itemCount: widget.items.length,
        controller: PageController(viewportFraction: viewport),
        onPageChanged: (int index) => setState(() => _index = index),
        itemBuilder: (_, i) {
          return Transform.scale(
              scale: _index == i ? 1 : viewport,
              child: CreditCard(
                height: height,
                balance: widget.items[i]['balance'],
                brand: widget.items[i]['brand'],
                currencyChar: widget.items[i]['currencyChar'],
                number: widget.items[i]['number'],
                name: widget.items[i]['name'],
                currency: widget.items[i]['currency'],
              ));
        },
      ),
    );
  }
}
