import 'package:flutter/material.dart';


class Notification extends StatefulWidget {
  // List<WeatherModel> weatherModel = [];

//  Search({required this.weatherModel});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff060720),
        body: Container(
          height: myHeight,
          width: myWidth,
          child: Column(
            children: [
              SizedBox(
                height: myHeight * 0.03,
              ),
              Text(
                'Pick location',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(
                height: myHeight * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: myWidth * 0.05),
                child: Column(
                  children: [
                    Text(
                      'find the area or city that you want to know the detailed weather info at this time',
                      style: TextStyle(
                          fontSize: 18, color: Colors.white.withOpacity(0.5)),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: myHeight * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: myWidth * 0.06),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        // height: myHeight * 0.1,
                        // width: myWidth * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white.withOpacity(0.05)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: myWidth * 0.05),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Image.asset(
                                  'assets/icons/2.2.png',
                                  height: myHeight * 0.025,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5))),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: myWidth * 0.03,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        // height: myHeight * 0.1,
                        // width: myWidth * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white.withOpacity(0.05)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: myHeight * 0.013),

                        ),
                      ),
                    )
                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );

  }


}
