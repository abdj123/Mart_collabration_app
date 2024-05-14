import 'package:flutter/material.dart';
import 'package:nesro_mart/auth_verifiyer.dart';
import 'package:nesro_mart/constants.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final List<String> _otpValues = ['', '', '', '', '', ''];
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
                            "Verification",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 18.0),
                            child: Text(
                              "A 5-Digit PIN has been sent to your\nemail. Enter it below to continue",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(58, 56, 56, 1)),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _textFieldOTP(first: true, last: false, index: 0),
                              const SizedBox(
                                width: 4,
                              ),
                              _textFieldOTP(
                                  first: false, last: false, index: 1),
                              const SizedBox(
                                width: 4,
                              ),
                              _textFieldOTP(
                                  first: false, last: false, index: 2),
                              const SizedBox(
                                width: 4,
                              ),
                              _textFieldOTP(
                                  first: false, last: false, index: 3),
                              const SizedBox(
                                width: 4,
                              ),
                              _textFieldOTP(
                                  first: false, last: false, index: 4),
                              const SizedBox(
                                width: 4,
                              ),
                              _textFieldOTP(first: false, last: true, index: 5),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const AuthVerifiyer(),
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

  Widget _textFieldOTP({bool? first, bool? last, required int index}) {
    return Expanded(
      child: SizedBox(
        height: 50,
        width: 40,
        child: AspectRatio(
          aspectRatio: 8,
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              setState(() {
                _otpValues[index] = value;
              });

              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            maxLength: 1,
            // controller: controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color(0xffc5c5c5),
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Color(0xffc5c5c5))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Color(0xffc5c5c5))),
            ),
          ),
        ),
      ),
    );
  }
}
