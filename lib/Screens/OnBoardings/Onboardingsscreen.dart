import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zerohex_app/Screens/OnBoardings/onboarding_model.dart';
import 'package:zerohex_app/TabBar/TabsPages.dart';

class OnboardingScreen extends StatefulWidget {
  final List<OnboardingModel> pages;
  final Color bgColor;
  final Color themeColor;
  final ValueChanged<String> skipClicked;
  final ValueChanged<String> getStartedClicked;

  OnboardingScreen({
    Key key,
    @required this.pages,
    @required this.bgColor,
    @required this.themeColor,
    @required this.skipClicked,
    @required this.getStartedClicked,
  }) : super(key: key);

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < widget.pages.length; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  List<Widget> buildOnboardingPages() {
    final children = <Widget>[];

    for (int i = 0; i < widget.pages.length; i++) {
      children.add(_showPageData(widget.pages[i]));
    }
    return children;
  }

  @override
  void initState() {
    super.initState();
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 4.0,
      width: isActive ? 40.0 : 40.0,
      decoration: BoxDecoration(
        color:
            isActive ? Color(0xFF0084FF) : Color(0xFF0084FF).withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF071426),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              color: Colors.white,
            ),
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 600.0,
                    color: Colors.transparent,
                    child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: buildOnboardingPages()),
                  ),
                  SizedBox(height: 70.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _currentPage != 0
                          ? GestureDetector(
                              onTap: () {
                                _pageController.previousPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text(
                                'Prev',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0),
                              ),
                            )
                          : Text(''),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: _buildPageIndicator(),
                      ),
                      _currentPage != widget.pages.length - 1
                          ? GestureDetector(
                              onTap: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Text('Next'),
                            )
                          : Text(''),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == widget.pages.length - 1
          ? _showGetStartedButton()
          : Text(''),
    );
  }

  Widget _showPageData(OnboardingModel page) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage(page.imagePath),
              height: 400.0,
              width: 400.0,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            page.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: page.titleColor,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            page.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: page.descripColor,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  Widget _showGetStartedButton() {
    final GestureDetector loginButtonWithGesture = new GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TabsPage(),
          ),
        );
      },
      child: new Container(
        height: 50.0,
        decoration: new BoxDecoration(
            color: Color(0xFF0084FF),
            borderRadius: new BorderRadius.all(Radius.circular(15.0))),
        child: new Center(
          child: new Text(
            'Connect your metamask',
            style: new TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );

    return new Padding(
        padding:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 30.0),
        child: loginButtonWithGesture);
  }
}
