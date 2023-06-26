import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isPassword = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(gradient: gradientBackground),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Image.asset(
                          logoImage,
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome To IngLab',
                            style: textLarge(color: neutral90, isBold: true),
                          ),
                          AppDimens.verticalSpace6,
                          Text(
                            'Please enter your details to continue',
                            style: textNormal(color: neutral70, isBold: false),
                          ),
                          AppDimens.verticalSpace24,
                          TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: textInputDecoration(
                              isFilled: true,
                              fillColor: Colors.white,
                              colorBorder: Colors.transparent,
                              enableColorBorder: Colors.transparent,
                              hintText: 'User Name',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'User Name must be filled out !';
                              }
                              return null;
                            },
                          ),
                          AppDimens.verticalSpace12,
                          TextFormField(
                            obscureText: isPassword,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: textInputDecoration(
                              isFilled: true,
                              fillColor: Colors.white,
                              colorBorder: Colors.transparent,
                              enableColorBorder: Colors.transparent,
                              hintText: 'Password',
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isPassword = !isPassword;
                                  });
                                },
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: isPassword ? neutral70 : primaryColor,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password must be filled out !';
                              }
                              return null;
                            },
                          ),
                          AppDimens.verticalSpace12,
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forget Password?',
                              style: textNormal(color: primaryColor),
                            ),
                          ),
                          AppDimens.verticalSpace16,
                          bigButton(
                            text: 'Login',
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushReplacementNamed(context, routeHome);
                              }
                            },
                            textStyle: textMedium(
                              color: Colors.white,
                              isBold: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppDimens.paddingBottom,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
