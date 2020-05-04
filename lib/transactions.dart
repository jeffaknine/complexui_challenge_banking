import 'package:flutter/material.dart';

final List transactions = [
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
  {
    'icon': Icons.fastfood,
    'title': 'Restaurants and Bars',
    'subtitle': '11 April, 09:02 am',
    'amount': '14' //€
  },
];

class Transactions extends StatelessWidget {
  final ScrollController scrollController;

  Transactions({Key key, this.scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: transactions
          .map((t) => ListTile(
              dense: true,
              leading: Icon(
                t['icon'],
                color: Color(0xff4E5467),
              ),
              title: Text(
                t['title'],
                style: TextStyle(color: Color(0xffE3E3E6)),
              ),
              subtitle: Text(
                t['subtitle'],
                style: TextStyle(color: Color(0xff5C606B)),
              ),
              trailing: Text(
                "- €${t['amount']}",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )))
          .toList(),
    );
  }
}
