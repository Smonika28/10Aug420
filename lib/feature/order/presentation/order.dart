import 'package:flutter/material.dart';
import '../../../global_widget/bottom_nav.dart';
import '../../orderSummery/presentation/orderSummery.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPage();
}

class _MyOrderPage extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "My Orders",
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const HomePageWithBottomBar()));
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        height: screenHeight,
        child: Column(children: <Widget>[
          Container(
            color: Colors.grey.shade100,
            height: screenHeight * 0.89,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return productCard(screenHeight);
                }),
          ),
        ]),
      ),
    );
  }

  Widget productCard(double screenHeight) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: screenHeight * 0.25,
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(12)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 1, left: 6, right: 6),
          child: Row(children: [
            RichText(
              text: const TextSpan(
                text: 'Order Id:156734\n',
                style: TextStyle(color: Colors.black, fontSize: 12),
                children: [
                  TextSpan(
                    text: 'June 12, 2021',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
            ),
            const Spacer(),
            RichText(
              text: const TextSpan(
                text: '\$500\n',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: 'On the way',
                    style: TextStyle(color: Colors.red, fontSize: 10),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Divider(
          color: Colors.grey.shade400,),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const OrderSummeryPage()));

          },
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.35,
                height: screenHeight * 0.14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/productImg.png"),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(6),
                width: MediaQuery.of(context).size.width * 0.5,
                height: screenHeight * 0.13,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Organic hemp flower Organic hemp flower ",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: const Text(
                        "27% THC",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: const Text(
                        "Humboldt Farms",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),

      //
    );
  }
}
