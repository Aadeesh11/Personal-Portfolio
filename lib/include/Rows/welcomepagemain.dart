import 'package:AadeeshOswal/configure/navigation_service.dart';
import 'package:AadeeshOswal/configure/routing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class WelcomePageDesk extends StatelessWidget {
  const WelcomePageDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hi ! I'm Aadeesh Oswal",
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "I am a passionate Full-Stack developer, always on the lookout for new technologies!",
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.facebook,
              //           color: Colors.blue,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod(
              //               "open", ["https://www.facebook.com/"]);
              //         },
              //       )),
              // ),
              // Expanded(
              //   child: Container(
              //     width: 60,
              //     height: 60,
              //     child: GestureDetector(
              //       child: Icon(
              //         FontAwesomeIcons.twitter,
              //         color: Colors.lightBlue,
              //         size: 40,
              //       ),
              //       onTap: () {
              //         js.context.callMethod(
              //             "open", ["https://twitter.com/"]);
              //       },
              //     ),
              //   ),
              // ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", [
                          "https://www.linkedin.com/in/aadeesh-oswal-b422941b9/"
                        ]);
                      },
                    )),
              ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.bloggerB,
              //           color: Colors.red,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod(
              //               "open", [""]);
              //         },
              //       )),
              // ),
              Expanded(
                child: Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://www.github.com/Aadeesh11"]);
                      },
                    )),
              ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.gitlab,
              //           color: Colors.orange,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod(
              //               "open", ["https://www.gitlab.com/"]);
              //         },
              //       )),
              // ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.medium,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod(
              //               "open", ["https://medium.com/"]);
              //         },
              //       )),
              // ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.dev,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod(
              //               "open", ["https://dev.to/"]);
              //         },
              //       )),
              // ),
              // Expanded(
              //   child: Container(
              //       width: 60,
              //       height: 60,
              //       child: IconButton(
              //         icon: Icon(
              //           FontAwesomeIcons.reddit,
              //           color: Colors.deepOrangeAccent,
              //           size: 40,
              //         ),
              //         onPressed: () {
              //           js.context.callMethod("open",
              //               ["https://www.reddit.com/user/"]);
              //         },
              //       )),
              // ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", ["drive.google.com"]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    child: Text(
                      'SEE MY RESUME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WelcomePageTab extends StatelessWidget {
  const WelcomePageTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Hi ! I'm Aadeesh Oswal",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 50),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "I am a passionate Full-Stack developer, always on the lookout for new technologies!",
                style: TextStyle(
                  fontSize: 20,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: Icon(
                //           FontAwesomeIcons.facebook,
                //           color: Colors.blue,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod("open",
                //               ["https://www.facebook.com/aadeeshjujaray"]);
                //         },
                //       )),
                // ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: Icon(
                //           FontAwesomeIcons.twitter,
                //           color: Colors.lightBlue,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod(
                //               "open", ["https://twitter.com/"]);
                //         },
                //       )),
                // ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Color.fromRGBO(40, 103, 178, 1),
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod("open", [
                            "https://www.linkedin.com/in/aadeesh-oswal-b422941b9/"
                          ]);
                        },
                      )),
                ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: Icon(
                //           FontAwesomeIcons.bloggerB,
                //           color: Colors.red,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod(
                //               "open", ["hg"]);
                //         },
                //       )),
                // ),
                Expanded(
                  child: Container(
                      width: 60,
                      height: 60,
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.github,
                          size: 40,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              "open", ["https://www.github.com/Aadeesh11"]);
                        },
                      )),
                ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: Icon(
                //           FontAwesomeIcons.gitlab,
                //           color: Colors.orange,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod(
                //               "open", ["https://www.gitlab.com/"]);
                //         },
                //       )),
                // ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: Icon(
                //           FontAwesomeIcons.medium,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod(
                //               "open", ["https://medium.com/"]);
                //         },
                //       )),
                // ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: Icon(
                //           FontAwesomeIcons.dev,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod(
                //               "open", ["https://dev.to/aadeeshjujaray"]);
                //         },
                //       )),
                // ),
                // Expanded(
                //   child: Container(
                //       width: 60,
                //       height: 60,
                //       child: IconButton(
                //         icon: Icon(
                //           FontAwesomeIcons.reddit,
                //           color: Colors.deepOrangeAccent,
                //           size: 40,
                //         ),
                //         onPressed: () {
                //           js.context.callMethod("open",
                //               ["https://www.reddit.com/user/"]);
                //         },
                //       )),
                // ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () =>
                      locator<NavigationService>().navigateTo(ContactRoute),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", ["drive.google.com"]);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      'SEE MY RESUME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomePageMob extends StatelessWidget {
  const WelcomePageMob({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "Hi ! I'm Aadeesh Oswal",
                style: TextStyle(
                    fontWeight: FontWeight.w800, height: 1.3, fontSize: 32),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "I am a passionate Full-Stack developer, always on the lookout for new technologies!",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: Icon(
                //         FontAwesomeIcons.facebook,
                //         color: Colors.blue,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", ["https://www.facebook.com/"]);
                //       },
                //     )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: Icon(
                //         FontAwesomeIcons.twitter,
                //         color: Colors.lightBlue,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", ["https://twitter.com/"]);
                //       },
                //     )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color.fromRGBO(40, 103, 178, 1),
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod("open", [
                          "https://www.linkedin.com/in/aadeesh-oswal-b422941b9/"
                        ]);
                      },
                    )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: Icon(
                //         FontAwesomeIcons.bloggerB,
                //         color: Colors.red,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", [""]);
                //       },
                //     )),
                Container(
                    width: 55,
                    height: 55,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        size: 40,
                      ),
                      onPressed: () {
                        js.context.callMethod(
                            "open", ["https://www.github.com/Aadeesh11"]);
                      },
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: Icon(
                //         FontAwesomeIcons.gitlab,
                //         color: Colors.orange,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", ["https://www.gitlab.com/"]);
                //       },
                //     )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: Icon(
                //         FontAwesomeIcons.medium,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", ["https://medium.c"]);
                //       },
                //     )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: Icon(
                //         FontAwesomeIcons.dev,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod(
                //             "open", ["https://dev.to/"]);
                //       },
                //     )),
                // Container(
                //     width: 55,
                //     height: 55,
                //     child: IconButton(
                //       icon: Icon(
                //         FontAwesomeIcons.reddit,
                //         color: Colors.deepOrangeAccent,
                //         size: 40,
                //       ),
                //       onPressed: () {
                //         js.context.callMethod("open",
                //             ["https://www.reddit.com/user/"]);
                //       },
                //     )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () =>
                        locator<NavigationService>().navigateTo(ContactRoute),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        'CONTACT ME',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod("open", ["drive.google.com"]);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text(
                        'SEE MY RESUME',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
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
