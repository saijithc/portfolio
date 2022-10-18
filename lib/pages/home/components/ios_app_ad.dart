import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class IosAppAd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
        child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 100,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return ResponsiveWrapper(
                maxWidth: width,
                minWidth: width,
                defaultScale: false,
                child: Container(
                  child: Flex(
                    direction: constraints.maxWidth > 720
                        ? Axis.horizontal
                        : Axis.vertical,
                    children: [
                      // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Image.asset(
                          "assets/tailus.png",
                          // Set width for image on smaller screen
                          width: constraints.maxWidth > 720.0 ? null : 350.0,
                        ),
                      ),
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ANDROID APP",
                              style: GoogleFonts.oswald(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "TAILUS\nSOCIAL MEDIA APP",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                height: 1.3,
                                fontSize: 35.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '''Tailus is a Social media App Using Node-Js as Backend, and
used Provider as Statemanagement ,using MVC folder
structure, used DIO for access API-method's , the app Starts
with an authentication using both Password and using OTP,
Email , Google sign- up etc..
user can access the chat , voice-call, videocall , like, share
,post , can add stories, block, and also User can create
private and public account based on their preference, push
notifications,
In this project ,l collaborated with an Backend Developer,''',
                              style: TextStyle(
                                color: kCaptionColor,
                                height: 1.5,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      height: 48.0,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 28.0,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Center(
                                          child: Text(
                                            "EXPLORE MORE",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 400,
            width: 3,
            color: Colors.white,
          ),
          SizedBox(
            width: 50,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return ResponsiveWrapper(
                maxWidth: width,
                minWidth: width,
                defaultScale: false,
                child: Container(
                  child: Flex(
                    direction: constraints.maxWidth > 720
                        ? Axis.horizontal
                        : Axis.vertical,
                    children: [
                      // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Image.asset(
                          "assets/shopping.png",
                          // Set width for image on smaller screen
                          width: constraints.maxWidth > 720.0 ? null : 350.0,
                        ),
                      ),
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ANDROID APP",
                              style: GoogleFonts.oswald(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Shopping App\nONLINE SHOPPING APPLICATION",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                height: 1.3,
                                fontSize: 35.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '''It's an online application were user can purchase the products from different category of items''',
                              style: TextStyle(
                                color: kCaptionColor,
                                height: 1.5,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      height: 48.0,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 28.0,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Center(
                                          child: Text(
                                            "EXPLORE MORE",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            height: 400,
            width: 3,
            color: Colors.white,
          ),
          SizedBox(
            width: 50,
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              return ResponsiveWrapper(
                maxWidth: width,
                minWidth: width,
                defaultScale: false,
                child: Container(
                  child: Flex(
                    direction: constraints.maxWidth > 720
                        ? Axis.horizontal
                        : Axis.vertical,
                    children: [
                      // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Image.asset(
                          "assets/music player.png",
                          // Set width for image on smaller screen
                          width: constraints.maxWidth > 720.0 ? null : 350.0,
                        ),
                      ),
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ANDROID APP",
                              style: GoogleFonts.oswald(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "MUSIC PILL\nOFFLINE MUSIC PLAYER",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                height: 1.3,
                                fontSize: 35.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '''It's an offline Music-Player App made by flutter, using Hive
as database . GetX used for State-management and used
MVVM architecture . It have favorite and playlist and initially
the app will ask for permission to get all audio files on the
users device, it have mini-Player and also having Status bar
for current Playing with info, And also Hosted the App in Play
store''',
                              style: TextStyle(
                                color: kCaptionColor,
                                height: 1.5,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      height: 48.0,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 28.0,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Center(
                                          child: Text(
                                            "EXPLORE MORE",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            width: 50,
          ),
        ],
      ),
    ));
  }
}
