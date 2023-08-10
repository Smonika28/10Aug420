import 'package:flutter/material.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({super.key});

  @override
  State<PaymentCard> createState() => _PaymentCard();
}

class _PaymentCard extends State<PaymentCard> {
  get value => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Payment Method",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 0, top: 10, left: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "ICIC Bank Credit card",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/bank.jpg',
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "**** **** **** 1234",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "No cost  EMI at \$15/ month",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      const Text(
                        "cvv",
                        style: TextStyle(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: const Icon(
                            Icons.question_mark,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(
              top: 10,
            )),
            Container(
              margin: const EdgeInsets.only(bottom: 0, top: 10, left: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.red),
                              focusColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green),
                              value: 1,
                              groupValue: null,
                              onChanged: (value) {},
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Row(children: [
                              Image.asset(
                                'assets/images/credit.png',
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Net Banking",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 0, top: 10, left: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => const Color(0xff00C8B8)),
                              focusColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.green),
                              value: 0,
                              groupValue: value,
                              onChanged: (v) => setState(() => _PaymentCard()),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Row(children: [
                              Image.asset(
                                'assets/images/salary.png',
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Cash On Delivery",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 240,
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
                  onPressed: () {},
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
                    'SET AS DEFAULT >',
                  ),
                ),
              ),
            ),
            Container()
          ],
        ),
      ]),
    );
  }
}
