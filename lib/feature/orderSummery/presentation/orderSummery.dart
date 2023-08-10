import 'package:flutter/material.dart';

import '../../../global_widget/bottom_nav.dart';

class OrderSummeryPage extends StatefulWidget {
  const OrderSummeryPage({super.key});

  @override
  State<OrderSummeryPage> createState() => _OrderSummeryPage();
}

class _OrderSummeryPage extends State<OrderSummeryPage> {
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
          "Orders Summery",
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
      body: ListView(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            height: screenHeight,
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, bottom: 1, left: 16, right: 16),
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
                color: Colors.grey.shade400,
              ),
              Container(
                color: Colors.white,
                height: screenHeight * 0.25,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return productCard(screenHeight);
                    }),
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 209, 209)
                        .withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price Details (3 Items)',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 211, 209, 209)
                                .withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 1, left: 0, right: 0),
                          child: Row(children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Total MRP',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            const Spacer(),
                            RichText(
                              text: const TextSpan(
                                text: '\$78',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 211, 209, 209)
                                .withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 1, left: 0, right: 0),
                          child: Row(children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Discount On MRP',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            const Spacer(),
                            RichText(
                              text: const TextSpan(
                                text: '\$-7',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 211, 209, 209)
                                .withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 1, left: 0, right: 0),
                          child: Row(children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Delivery Charges',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            const Spacer(),
                            RichText(
                              text: const TextSpan(
                                text: '\$18',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Divider(
                        color: Colors.grey.shade400,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 211, 209, 209)
                                .withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 0, bottom: 1, left: 0, right: 0),
                          child: Row(children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Total Amount',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Spacer(),
                            RichText(
                              text: const TextSpan(
                                text:'\$408',

                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 5,
              ),
              Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 211, 209, 209)
                        .withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order Details',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Payment mode\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                      text: 'Cash',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Date\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                      text: 'August 02, 2021 ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 3),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Deliever to",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Adam Smith",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "ABCD Apartment",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "51 Hereford Avenue, Culburra,\nSouth Australia",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Zipcode: 5261",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ]),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 0, top: 10, left: 15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            child: Material(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const HomePageWithBottomBar()));
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  foregroundColor: const Color(0xffFFFFFF),
                  backgroundColor: const Color(0xff00C8B8),
                  minimumSize: const Size(double.infinity, 55.0),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  textStyle: Theme.of(context).textTheme.button?.copyWith(
                    fontSize: 15.0,
                  ),
                ),
                child: const Text(
                  'RETURN >',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget productCard(double screenHeight) {
    return Container(
      margin: const EdgeInsets.only(top: 8, left: 12, right: 12, bottom: 5),
      height: screenHeight * 0.14,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.25,
              height: screenHeight * 0.10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/productImg.png"),
                  )),
            ),
            Container(
              margin: const EdgeInsets.all(6),
              width: MediaQuery.of(context).size.width * 0.5,
              height: screenHeight * 0.10,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Organic hemp flower Organic hemp flower ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: const Text(
                        "27%",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: const Text(
                        "Hechmm",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
