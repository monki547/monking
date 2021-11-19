import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageTitle,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.notification_important_outlined,
                  size: 30,
                  color: color.AppColor.homePageBox,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  color: color.AppColor.homePageBox,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    bottomLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  )),
              child: Container(
                padding: const EdgeInsets.only(top: 40, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Balance",
                      style: TextStyle(
                        fontSize: 15,
                        color: color.AppColor.homePageBackground,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Rp.12,000,069",
                      style: TextStyle(
                        fontSize: 28,
                        color: color.AppColor.homePageBackground,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageBackground,
                            ),
                          ),
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageBackground,
                            ),
                          ),
                          Text(
                            "...",
                            style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageBackground,
                            ),
                          ),
                          Text(
                            "420",
                            style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageBackground,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Main Menus",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageTitle,
                  ),
                ),
              ],
            ),
            Expanded(child: ListView.builder(itemBuilder: (_, i) {
              return Row(
                children: [
                  Container(
                    width: 200,
                    height: 170,
                  ),
                  Icon(Icons.arrow_upward, size: 20,color: color.AppColor.homePageBox,)
                ],
              );
            }))
          ],
        ),
      ),
    );
  }
}
