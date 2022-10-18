import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../../models/testimonial.dart';
import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

final List<Testimonial> testimonials = [
  Testimonial(
    text:
        "Design and Build sophisticated and highly scalable apps using Flutter. Build custom packages in Flutter using the functionalities and APIs already available in native Android and IOS. Translate and Build the designs and Wireframes into high quality responsive UI code.I like to work with him in the future again.",
    occupation: "Flutter Developer",
    personName: "MURTHAZA IBRAHIM",
    profilePhoto: "assets/murthasa.jpg",
  ),
  Testimonial(
    text:
        "Design and Build sophisticated and highly scalable apps using Flutter. Build custom packages in Flutter using the functionalities and APIs already available in native Android and IOS. Translate and Build the designs and Wireframes into high quality responsive UI code.I like to work with him in the future again.",
    occupation: "MERN Stack Developer",
    personName: "MOHAMED SABITH",
    profilePhoto: "assets/sabith.jpg",
  )
];

class TestimonialWidget extends StatelessWidget {
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
}

Widget _buildUi(double width) {
  return Center(
    child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TESTIMONIALS",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                  height: 1.3,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Flex(
                direction: ScreenHelper.isMobile(context)
                    ? Axis.vertical
                    : Axis.horizontal,
                // Lets map
                children: testimonials.map((testimonial) {
                  return Expanded(
                    flex: ScreenHelper.isMobile(context) ? 0 : 1,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(bottom: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/quote.png",
                              width: 50.0,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            testimonial.text,
                            style: TextStyle(
                              color: kCaptionColor,
                              height: 1.8,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25.0,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                  testimonial.profilePhoto,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    testimonial.personName,
                                    style: GoogleFonts.oswald(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    testimonial.occupation,
                                    style: TextStyle(
                                      color: kCaptionColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
    ),
  );
}
