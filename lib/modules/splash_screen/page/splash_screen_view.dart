import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  bool isVisibleLogo = false;

  _SplashScreenViewState() {
    Timer(const Duration(milliseconds: 250), () {
      setState(() {
        isVisibleLogo = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(gradient: gradientBackground),
          ),
          AnimatedOpacity(
            opacity: isVisibleLogo ? 1.0 : 0,
            duration: const Duration(milliseconds: 2000),
            onEnd: () async {
              var token = await SecureStorage.getAccessToken();

              if (token != null) {
                Navigator.pushReplacementNamed(context, routeHome);
              } else {
                Navigator.pushReplacementNamed(context, routeLogin);
              }
            },
            child: Center(
              child: Image.asset(
                logoImage,
                width: MediaQuery.of(context).size.width / 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
