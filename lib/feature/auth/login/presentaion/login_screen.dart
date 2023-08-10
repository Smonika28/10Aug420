import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/global_widget/bottom_nav.dart';
import 'package:four20society/global_widget/custom_button.dart';
import 'package:four20society/global_widget/input_fields.dart';
import 'package:four20society/utils/Api/api_calling/api_provider.dart';
import '../../../../utils/local_storage/local_storage.dart';
import '../../forget_password/presentation/forget_password_screen.dart';
import '../../registration/presentaion/registration_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String radioGroup = "";
  bool isTextObscurePassword = true;
  List<String> radioList = ["lbl_seller", "lbl_customer"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.network("https://wallpapercave.com/wp/wp2490640.jpg",
                fit: BoxFit.cover)),
        Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 60, left: 45, right: 45),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(214),
                      topRight: Radius.circular(214))),
              child: Form(
                child: Column(
                  children: [
                    const Text("Welcome again!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700)),
                    const SizedBox(height: 30),
                    InputFieldWidget(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter email";
                          } else if (!EmailValidator.validate(value)) {
                            return "Please enter valid email";
                          }
                          return null;
                        },
                        controller: emailController,
                        hintText: 'user Name'),
                    InputFieldWidget(
                      obscureText: isTextObscurePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter password";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters";
                        }
                        return null;
                      },
                      // obscureText: true,
                      controller: passwordController,
                      hintText: 'password',
                      sufferIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isTextObscurePassword = !isTextObscurePassword;
                          });
                        },
                        child: isTextObscurePassword
                            ? const Icon(
                                Icons.visibility_off_rounded,
                              )
                            : const Icon(
                                Icons.visibility_rounded,
                              ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordScreen()));
                        },
                        child: const Text(
                          "forgot Your Password?",
                          style: TextStyle(color: AppColors.buttonColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 90),
                    CustomElevatedButton(
                      onTap: () async {
                        ApiProvider apiProvider = ApiProvider();
                        Map<String, dynamic> reqModel = {
                          "email": emailController.text.trim(),
                          "password": passwordController.text.trim(),
                          "user_type": "Seller"
                        };
                        var response = await apiProvider.login(reqModel);
                        final token = await LocalStorageService().saveToDisk(
                                LocalStorageService.ACCESS_TOKEN_KEY,
                                response.data!.authToken) ??
                            "";
                        if (response.data!.user != null) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      const HomePageWithBottomBar()));
                        } else if (response.status == false) {
                          const SnackBar(
                              content: Text("Email or password incorrect"));
                        }
                      },
                      title: "LOGIN",
                      color: AppColors.buttonColor,
                    ),
                    const SizedBox(height: 21),
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                            children: <TextSpan>[
                          const TextSpan(
                              text: 'Don’t Have an Account?',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const RegistrationScreen()));
                                  // Navigator.pushNamedAndRemoveUntil(
                                  //     context,
                                  //     AppRoute.homePageWithBottomBar,
                                  //     (route) => false);
                                },
                              text: ' SIGNUP NOW',
                              style: const TextStyle(
                                  color: AppColors.app_bottombar_color))
                        ])),
                    const Text("Or Login With"),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook_outlined),
                        Icon(Icons.apple),
                      ],
                    )
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
