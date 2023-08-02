import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/pages/home_screen.dart';
import 'package:flutter_travel_ui/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(50.0, 50.0)
                ..rotateZ(0.47),
              child: Container(
                width: 46,
                height: 525.68,
                decoration: const BoxDecoration(color: AppColors.deepYellow),
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(),
              ),
              Expanded(
                flex: 8,
                child: Image.asset(
                  "assets/images/splash.png",
                  fit: BoxFit.none,
                  scale: 0.7,
                  alignment: const Alignment(.15, 0),
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 60.0, right: 20),
              child: SizedBox(
                width: 300,
                height: 300,
                child: Text(
                  "DON'T MISS YOUR BEAUTIFUL MOMENTS IN THIS WORLD",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48,
                    fontFamily: 'Playfair Display',
                    fontWeight: FontWeight.w700,
                    height: 1.06,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HomeScreen(),
                  ));
                },
                child: Container(
                  width: 202,
                  height: 53,
                  decoration: ShapeDecoration(
                    color: AppColors.deepYellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x38BD9800),
                        blurRadius: 17,
                        offset: Offset(11, 6),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 1.29,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
