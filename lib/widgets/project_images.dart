import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../size_config.dart';

class ProjectImages extends StatefulWidget {
  const ProjectImages({Key key}) : super(key: key);

  @override
  _ProjectImagesState createState() => _ProjectImagesState();
}

class _ProjectImagesState extends State<ProjectImages> {
  int activeIndex = 0;
  final projectImages = [
    'assets/submissions/img1.png',
    'assets/submissions/img2.png',
    'assets/submissions/img6.png',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Stack(
      children: [
        buildSlider(defaultSize),
        buildIndicator(),
        buildAppBar(),
      ],
    );
  }

  Positioned buildAppBar() {
    return Positioned(
      left: 8.0,
      right: 10.0,
      top: 12.0,
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: ClipOval(
          child: Container(
            color: Color(0xff324259).withOpacity(0.7),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon:
                  Icon(Icons.arrow_back_ios_new, size: 22, color: Colors.white),
            ),
          ),
        ),
        actions: [
          ClipOval(
            child: Container(
              width: 55,
              color: Color(0xff324259).withOpacity(0.7),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.share_outlined, size: 22, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Positioned buildIndicator() {
    return Positioned(
        left: 0,
        right: 0,
        child: Center(
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: projectImages.length,
            effect: ExpandingDotsEffect(activeDotColor: Color(0XFF0084FF)),
          ),
        ),
        bottom: 20);
  }

  CarouselSlider buildSlider(double defaultSize) {
    return CarouselSlider.builder(
      itemCount: projectImages.length,
      itemBuilder: (context, index, realIndex) {
        final projectImage = projectImages[index];
        return Container(
          width: defaultSize * 50,
          color: Colors.grey,
          child: Image.asset(projectImage, fit: BoxFit.cover),
        );
      },
      options: CarouselOptions(
          height: defaultSize * 25,
          autoPlay: true,
          viewportFraction: 1,
          onPageChanged: (index, reason) =>
              setState(() => activeIndex = index)),
    );
  }
}
