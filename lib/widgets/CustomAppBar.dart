import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return new SizedBox.fromSize(
      size: preferredSize,
      child: new LayoutBuilder(builder: (context, constraint) {

        return new Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60.0),
                    bottomRight: Radius.circular(60.0),
                  ),
                  color: Color(0xFF324259),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          width: 200,
                          height: 100,
                          // color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.transparent,
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                  AssetImage('assets/profileImage.png'),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 120,
                                    child: Text(
                                      'Hello !',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                      width: 120,
                                      child: Text(
                                        'Jhonathan Bolde',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          // color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 80,
                                    child: Image(
                                        image: new AssetImage(
                                            'assets/notification.png')),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                )),

          ],
        );
      }),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(180.0);
}
