import 'package:complexui_challenge_banking/carousel.dart';
import 'package:complexui_challenge_banking/transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
List creditCards = [
  {
    'currencyChar': "\$",
    'currency': "USD",
    'number': '5436',
    'name': "Jeff Aknine",
    'brand': 'Visa',
    'balance': '10023'
  },
  {
    'currencyChar': "\€",
    'currency': "EUR",
    'number': '5436',
    'name': "Jeff Aknine",
    'brand': 'MasterCard',
    'balance': '234124'
  },
  {
    'currencyChar': "\£",
    'currency': "GBP",
    'number': '5436',
    'name': "Jeff Aknine",
    'brand': 'American Express',
    'balance': '12309'
  },
];
var buttonColor = Color(0xff2A2E36);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Main());
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Color(0xff202429),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        // alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Wallets",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: InkWell(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.2),
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 0.0,
            child: Padding(
              padding: EdgeInsets.only(top: 100, bottom: 0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 60.0),
                    child: Carousel(
                      shrink: shrinkOffset,
                      items: creditCards,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Transactions',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.filter_list,
                          color: Color(0xff4F5464),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 350;

  @override
  double get minExtent => 250;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  ScrollController scrollController = ScrollController(initialScrollOffset: 0);
  var backgroundColor = Color(0xff202429);

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      // print(scrollController.offset);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        padding: EdgeInsets.only(top: 40),
        child: Stack(
          children: <Widget>[
            Positioned(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              top: 0,
              child: CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverPersistentHeader(
                    pinned: true,
                    floating: false,
                    delegate: Delegate(),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (_, index) => ListTile(
                              dense: true,
                              leading: Icon(
                                transactions[index]['icon'],
                                color: Color(0xff4E5467),
                              ),
                              title: Text(
                                transactions[index]['title'],
                                style: TextStyle(color: Color(0xffE3E3E6)),
                              ),
                              subtitle: Text(
                                transactions[index]['subtitle'],
                                style: TextStyle(color: Color(0xff5C606B)),
                              ),
                              trailing: Text(
                                "- €${transactions[index]['amount']}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                        childCount: transactions.length),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              child: Transform.translate(
                offset: Offset(
                    0,
                    (scrollController.hasClients && scrollController.offset > 0)
                        ? scrollController.offset
                        : 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff353A47),
                  ),
                  width: MediaQuery.of(context).size.width - 30,
                  height: 100,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.pie_chart,
                        color: Color(0xff778195),
                      ),
                      Icon(
                        Icons.credit_card,
                        color: Color(0xff778195),
                      ),
                      Icon(
                        Icons.person,
                        color: Color(0xff778195),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
