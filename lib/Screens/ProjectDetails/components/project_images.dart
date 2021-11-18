import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zerohex_app/Screens/ProjectDetails/components/app_bar.dart';
import '../../../size_config.dart';

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
    double screenWidth = SizeConfig.screenWidth;
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: projectImages.length,
          itemBuilder: (context, index, realIndex) {
            final projectImage = projectImages[index];
            return buildImage(projectImage, index, defaultSize);
          },
          options: CarouselOptions(
            height: defaultSize * 25,
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
        ),
        Positioned(
          width: screenWidth,
          child: Center(child: buildIndicator()),
          bottom: 20,
        ),
        CustomAppBar(screenWidth: screenWidth),
      ],
    );
  }

  Widget buildImage(String projectImage, int index, double defaultSize) =>
      Container(
        width: defaultSize * 50,
        color: Colors.grey,
        child: Image.asset(
          projectImage,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: projectImages.length,
        effect: ExpandingDotsEffect(activeDotColor: Color(0XFF0084FF)),
      );
}
