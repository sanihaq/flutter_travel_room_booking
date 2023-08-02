import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/pages/details_screen.dart';
import 'package:flutter_travel_ui/utils/app_icons_icons.dart';
import 'package:flutter_travel_ui/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 176,
                decoration: const BoxDecoration(color: Color(0xFFEBAD00)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hi, Rebecca',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 1.29,
                                ),
                              ),
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: AppColors.white,
                                backgroundImage: AssetImage("assets/images/avatar.png"),
                              ),
                            ],
                          ),
                          const Text(
                            'Pekanbaru, ID',
                            style: TextStyle(
                              color: Color(0xFFF4F4F4),
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.40,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            height: 50,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x3F343434),
                                  blurRadius: 7,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 16.0, top: 2),
                                  child: Icon(
                                    Icons.search,
                                    color: AppColors.gray,
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    cursorColor: AppColors.gray,
                                    decoration: InputDecoration(border: InputBorder.none),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10.0, top: 2),
                                  child: Icon(
                                    AppIcons.adjust,
                                    color: AppColors.gray,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: {
                      "Hotels": "assets/images/building1.png",
                      "Apartmens": "assets/images/building2.png",
                      "Home Stay": "assets/images/house.png"
                    }
                        .entries
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1.4, color: AppColors.gray.withOpacity(0.4)),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                                  child: Row(
                                    children: [
                                      Opacity(opacity: 0.7, child: Image.asset(e.value)),
                                      const SizedBox(width: 16),
                                      Text(
                                        e.key,
                                        style: const TextStyle(
                                          color: AppColors.gray,
                                          fontSize: 16,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Recomended',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 1.56,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DetailsScreen(
                                title: "Home Stay Kebota",
                                img: "assets/images/room1.jpg",
                                rate: 60,
                              ),
                            ),
                          );
                        },
                        child: const DetailTile(
                          title: "Home Stay Kebota",
                          img: "assets/images/room1.jpg",
                          rate: 60,
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DetailsScreen(
                                title: "Hotels Amanah",
                                img: "assets/images/hotel1.jpg",
                                rate: 20,
                              ),
                            ),
                          );
                        },
                        child: const DetailTile(
                          title: "Hotels Amanah",
                          img: "assets/images/hotel1.jpg",
                          rate: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 1.56,
                  ),
                ),
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        PopularTile(
                          title: 'Damai Home Stay',
                          img: "assets/images/house1.jpg",
                        ),
                        PopularTile(
                          title: 'Apartment Casablangka',
                          img: "assets/images/room2.jpg",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 68),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: AppColors.deepYellow,
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  indicator: CircleTabIndicator(color: AppColors.white, radius: 3),
                  indicatorPadding: const EdgeInsets.only(bottom: 8),
                  labelColor: AppColors.white,
                  unselectedLabelColor: AppColors.gray,
                  labelStyle: const TextStyle(
                    fontSize: 10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.40,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.40,
                  ),
                  tabs: const [
                    Tab(
                      icon: Icon(AppIcons.home),
                      text: "Home",
                      iconMargin: EdgeInsets.only(bottom: 6),
                    ),
                    Tab(
                      icon: Icon(AppIcons.discovery),
                      text: "Explorer",
                      iconMargin: EdgeInsets.only(bottom: 6),
                    ),
                    Tab(
                      icon: Icon(AppIcons.heart),
                      text: "Favorite",
                      iconMargin: EdgeInsets.only(bottom: 6),
                    ),
                    Tab(
                      icon: Icon(AppIcons.profile),
                      text: "Profile",
                      iconMargin: EdgeInsets.only(bottom: 6),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PopularTile extends StatelessWidget {
  const PopularTile({
    super.key,
    required this.title,
    required this.img,
  });

  final String title;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        shadows: const [
          BoxShadow(
            color: Color(0x4FCCCFD2),
            blurRadius: 36,
            offset: Offset(3, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 98,
              height: 75,
              decoration: ShapeDecoration(
                  color: Color(0x33807E7E),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                  image: DecorationImage(
                    image: AssetImage(img),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Jl. Mangga, Pekanbaru',
                    style: TextStyle(
                      color: Color(0xFFA09F9F),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: List.generate(
                      5,
                      (index) => const Padding(
                        padding: EdgeInsets.only(right: 2.0),
                        child: Icon(
                          AppIcons.star,
                          size: 14,
                          color: AppColors.deepYellow,
                        ),
                      ),
                    ).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailTile extends StatelessWidget {
  const DetailTile({
    super.key,
    required this.title,
    required this.img,
    required this.rate,
    this.rating = 4.5,
  });

  final String title;
  final String img;
  final double rating;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 238,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 106,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.20000000298023224),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: AppColors.deepYellow,
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          AppIcons.star,
                          size: 14,
                          color: AppColors.deepYellow,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          "$rating",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  '\$$rate /day',
                  style: const TextStyle(
                    color: Color(0xFF171818),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 1.79,
                  ),
                ),
                const Text(
                  'Jl.Khatib Sulaiman',
                  style: TextStyle(
                    color: Color(0xFF9E9E9E),
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    height: 2.08,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(AppIcons.double_bed, size: 14),
                    SizedBox(width: 6),
                    Text(
                      '3',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Row(
                  children: [
                    Icon(AppIcons.tub, size: 14),
                    SizedBox(width: 10),
                    Text(
                      '3',
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
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset = offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
