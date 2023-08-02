import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/utils/app_icons_icons.dart';
import 'package:flutter_travel_ui/utils/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.title,
    required this.img,
    required this.rate,
  });

  final String title;
  final String img;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 375,
                  height: 406,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.fitHeight,
                    ),
                    gradient: const LinearGradient(
                      begin: Alignment(0.09, -1.00),
                      end: Alignment(-0.09, 1),
                      colors: [Color(0xFF777777), Colors.black],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 99,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: Color(0xFF0A0A0A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.50),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.39,
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            AppIcons.star,
                            size: 12,
                            color: AppColors.deepYellow,
                          ),
                          SizedBox(width: 6),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        AppIcons.location,
                        size: 20,
                        color: AppColors.deepYellow,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Jl.Khatib Sulaiman',
                        style: TextStyle(
                          color: Color(0xFFAFAEB1),
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 1.79,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'While lodging at this wonderful property, guests can enjoy free Wi-Fi in all rooms, 24-hour security, daily housekeeping, laundromat, 24-hour front desk.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFAFAEB1),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 1.42,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Facilites',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.56,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: {
                            "2 Bed": "assets/images/bed.jpg",
                            "1 Bathtub": "assets/images/bathtub.jpg",
                            "Free Wifi": "assets/images/wifi.jpg",
                            "Smoking": "assets/images/smoking.jpg",
                          }
                              .entries
                              .map(
                                (e) => Container(
                                  width: 71,
                                  height: 63,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(e.value),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      e.key,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        height: 1.56,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 83,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/map.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$$rate /day',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        height: 1.39,
                      ),
                    ),
                    Container(
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
                          'Contact',
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
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: AppColors.white,
                    size: 22,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
