import 'package:flutter/material.dart';
import 'package:nesro_mart/constants.dart';
import 'package:nesro_mart/otp_verification.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: Column(children: [
              const SizedBox(
                height: 45,
              ),
              Image.asset("assets/Nesro Shop 3.png"),
              const Text(
                "NESRO MART",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              )
            ]),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.9,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1,
                            offset: const Offset(0, 4),
                            color: Colors.grey.shade300)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 58.0, horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Please Enter your Mobile Number \nto Login/Sign Up",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(58, 56, 56, 1)),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 30.0),
                            child: SizedBox(
                              height: 44,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(14)))),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => VerificationPage(),
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
                          )
                        ],
                      ),
                    )),
                const SizedBox()
              ],
            ),
          )
        ]),
      ),
    );
  }
}
