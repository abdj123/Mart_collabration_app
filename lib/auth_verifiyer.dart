import 'package:flutter/material.dart';
import 'package:nesro_mart/constants.dart';
import 'package:nesro_mart/landing_page.dart';

class AuthVerifiyer extends StatefulWidget {
  const AuthVerifiyer({super.key});

  @override
  State<AuthVerifiyer> createState() => _AuthVerifiyerState();
}

class _AuthVerifiyerState extends State<AuthVerifiyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 68.0),
              child: Image.asset("assets/Group3645.png"),
            ),
            const Text(
              "Phone Number Verified",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Congratulations, your phone number \nhas been verified. You can start using \nthe app",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LandingPage(),
                ));
              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kPrimaryColor),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            )
          ]),
        ),
      ),
    );
  }
}
