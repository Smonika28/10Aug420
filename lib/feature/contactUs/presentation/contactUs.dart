import 'package:flutter/material.dart';
import 'package:four20society/global_widget/bottom_nav.dart';
import '../../../global_widget/custom_button.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreen();
}

class _ContactScreen extends State<ContactScreen> {
  List<ButtonData> buttons = [
    ButtonData(label: ' Home', icon: Icons.home_filled),
    ButtonData(label: ' Work', icon: Icons.work),
    ButtonData(label: ' Friends & Families', icon: Icons.person),
    ButtonData(label: ' Others', icon: Icons.edit_location),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Contact Us",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5, top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 211, 209, 209).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Adam',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'smith02@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'House/Flat/Block No.',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Apartment/Road/Area',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 200,
                    child: TextFormField(
                      maxLines: null,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(20.0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                        hintText: 'Message',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const HomePageWithBottomBar()));
              },
              title: 'Save > ',
              color: const Color(0xff00C8B8),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}

class ButtonData {
  final String label;
  final IconData icon;
  ButtonData({required this.label, required this.icon});
}
