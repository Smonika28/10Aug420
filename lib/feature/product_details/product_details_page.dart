import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:four20society/global_widget/app_drawar.dart';
import '../../global_widget/bottom_nav.dart';
import '../../global_widget/custom_bordered_button.dart';
import '../../global_widget/custom_unbordered_button.dart';
import '../../utils/Api/api_calling/api_provider.dart';
import '../cart/presentation/cart_page.dart';
import '../checkout/presentation/check_out_screen.dart';
import 'model/productDetails_model.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreen();
}

class _ProductDetailScreen extends State<ProductDetailScreen> {
  ApiProvider apiProvider = ApiProvider();

  ProductDetailsModel productDetailsModel = ProductDetailsModel();
  List<dynamic> productDetailsList = [];
  productDetails() async {
    var resData = apiProvider.getProductDetails;
    setState(() {
      productDetailsModel = resData as ProductDetailsModel;
    });
  }

  @override
  void initState() {
    super.initState();
    productDetails();
    if (kDebugMode) {
      print("productDetailsList=====>>>>");
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map> myProducts =
      List.generate(11, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            "Product Details",
            style: TextStyle(color: Colors.black),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomePageWithBottomBar()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        drawer: customDrawer(context: context),
        body:
            ListView(
          padding: const EdgeInsets.all(13),
          children: [
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  SizedBox(
                    child: Stack(
                      children: [
                        Container(
                          width: 390,
                          height: 300,
                          decoration: BoxDecoration(
                            color: const Color(0xffCACED2),
                            borderRadius: BorderRadius.circular(
                                6), // Rounded border radius
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical:
                                    15), // Adding padding to top and bottom
                            child: Image.asset(
                              'assets/images/image.png',
                              width: 280,
                              height: 270,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      const Text(
                        "Cannabis Cocktail Syrup | 1000mg Delta-8 | Raspberry",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Image.asset(
                        "assets/images/flowerLogo.png",
                        width: 90,
                        height: 40,
                      ),
                      const Text(
                        "\$150",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Seller Name : James Bond",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Created At : 10 Mar, 2023",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              child: const Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Product Description",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            "Quantity:",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                          Text(
                            " 7",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Discount(%):",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                          Text(
                            " 10%",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "THC Range(%):",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                          Text(
                            " 27%",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Meta Title:",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                          Flexible(
                            child: Text(
                              " Cannabis Cocktail Syrup | 1000mg Delta-8 | Raspberry",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Meta Description:",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                      Text(
                        "Whether you’re a novice looking to microdots or an experienced user after a mega-dose – you’ve come to the right place",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Product Specification",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Our high CBD hemp flower cones are filled with fresh, organically grown cannabis. This Oregon-grown, organic hemp flower is slow cured with cold-pressed, single-origin cannabis derived terpenes to preserve the full cannabinoid profile and provide maximum flavor.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Experience all the benefits of full-spectrum CBD with the distinct, dank aroma and flavor of traditional cannabis.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              minRadius: 8,
                              backgroundColor: Color(0xFF00C8B8),
                              child: Icon(
                                Icons.check,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text("   No Shake")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              minRadius: 8,
                              backgroundColor: Color(0xFF00C8B8),
                              child: Icon(
                                Icons.check,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text("   No Trim")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              minRadius: 8,
                              backgroundColor: Color(0xFF00C8B8),
                              child: Icon(
                                Icons.check,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text("   No Fillers ")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              minRadius: 8,
                              backgroundColor: Color(0xFF00C8B8),
                              child: Icon(
                                Icons.check,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Text("   Lab Tested")
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBorderedElevatedButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CardScreen()));
                  },
                  title: 'ADD TO CART ',
                ),
                CustomUnBorderedElevatedButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CheckoutPage()));
                  },
                  title: 'BUY NOW > ',
                ),
              ],
            ),
          ],
        )
        );
  }
}
