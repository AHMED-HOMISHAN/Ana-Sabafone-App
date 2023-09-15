import 'package:anasabafone/Screens/Layouts/Layout.dart';
import 'package:anasabafone/components/components.dart';
import 'package:anasabafone/components/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  initState() {
    super.initState();

    setState(() {
      phoneController.text = "711111111";
      passwordController.text = "12345";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/ana_logo_default.png',
                      height: 70,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text('تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 30,
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                      )),

                  const SizedBox(
                    height: 80,
                  ),

                  // Email Input

                  defaultForm(
                    validate: true,
                    validationMessage: 'رقم الهاتف فارغ',
                    controller: phoneController,
                    label: 'رقم الهاتف',
                    prefixIcon: IconlyBroken.message,
                    type: TextInputType.emailAddress,
                    suffixIconPressed: () {},
                  ),

                  verticalSpacing,

                  // password Input
                  defaultForm(
                    controller: passwordController,
                    isPassword: isPassword,
                    validationMessage: 'كلمة السر فارغة',
                    validate: true,
                    type: TextInputType.visiblePassword,
                    prefixIcon: IconlyBroken.lock,
                    sufixIcon: isPassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    label: 'كلمة السر',
                    suffixIconPressed: () {
                      setState(() => isPassword = !isPassword);
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  //LOGIN Button

                  defaultButton(
                      label: 'تسجيل ',
                      width: double.infinity,
                      function: () {
                        if (formKey.currentState!.validate()) {
                          if (phoneController.text == "711111111" &&
                              passwordController.text == "12345") {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const Layout()));
                          }
                        }
                      }),

                  verticalSpacing,

                  //SIGN UP Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'إنشاء حساب',
                            style: TextStyle(color: primaryColor),
                          )),
                      const Text(
                        ' ليس لديك حساب ؟ ',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
