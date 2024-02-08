import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.sizeOf(context).width;
    var heightScreen = MediaQuery.sizeOf(context).height;
    var paddingWidth = widthScreen / 20;
    var paddingHeight = heightScreen / 5;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              top: paddingHeight,
              right: paddingWidth,
              left: paddingWidth,
              child: Padding(
                padding:
                    EdgeInsets.fromLTRB(paddingWidth, 0, paddingWidth, 0),
                child: SizedBox(
                  height: heightScreen - paddingHeight,
                  width: widthScreen - paddingWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 200),
                        child: Text(
                          "Login",
                          style: GoogleFonts.lato(
                            shadows: [
                              const Shadow(
                                offset: Offset(2, 5),
                                blurRadius: 4.0,
                                color: Color.fromARGB(128, 0, 0, 0),
                              )
                            ],
                            color: Colors.black,
                            fontSize: 82,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 300),
                        child: Text(
                          'Please sign in to continue.',
                          style: GoogleFonts.lato(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 400),
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.9),
                              ),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email),
                              border: InputBorder.none,
                              hintText: "Email or Phone number",
                              hintStyle: GoogleFonts.aboreto(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 500),
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.9),
                              ),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  'assets/images/Password.png',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: GoogleFonts.aboreto(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 600),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: Text(
                                "FORGET",
                                style: GoogleFonts.lato(
                                    color: const Color(0xFFFF8E3C),
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 600),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 56,
                              width: 143,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromRGBO(255, 144, 60, 1),
                                    Color.fromRGBO(255, 144, 60, 1),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 600),
                        child: Row(children: <Widget>[
                          const Expanded(child: Divider()),
                          Text(
                            " OR Continue With ",
                            style: GoogleFonts.lato(),
                          ),
                          const Expanded(child: Divider()),
                        ]),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(child: Container()),
                          Expanded(child: Container()),
                          DelayedDisplay(
                            delay: const Duration(milliseconds: 700),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'assets/images/google.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          DelayedDisplay(
                            delay: const Duration(milliseconds: 800),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'assets/images/github.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Expanded(child: Container()),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(child: Container()),
                      DelayedDisplay(
                        delay: const Duration(milliseconds: 900),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account? ',
                              style: GoogleFonts.lato(),
                            ),
                            Text(
                              ' Sign up',
                              style: GoogleFonts.lato(
                                  color: const Color(0xFFFF8E3C),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 19,
              top: 43,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 39,
                      height: 39,
                      child: Image.asset(
                        'assets/images/pet_finger.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Happy Pet',
                      style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: -125,
              top: 100,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(-21.88 / 360),
                child: SizedBox(
                  width: widthScreen / 2,
                  height: heightScreen / 2,
                  child: DelayedDisplay(
                    delay: const Duration(milliseconds: 1400),
                    child: Image.asset(
                      'assets/images/girl_bg.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
