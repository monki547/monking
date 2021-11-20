import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var icons = [
    Icons.calculate,
    Icons.calendar_today,
    Icons.commute,
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      bottomNavigationBar: Container(
        height: 100,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(
                currentIndex: currentIndex,
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.green,
                onTap: (value) {
                  print(value);
                  setState(() {
                    currentIndex = value;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    label: "Rumah",
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Rumah",
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Rumah",
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                  BottomNavigationBarItem(
                    label: "Rumah",
                    icon: Icon(
                      Icons.home,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: 50,
              padding: EdgeInsets.only(bottom: 40),
              child: Center(
                child: Container(
                  width: 50,
                  child: FloatingActionButton(
                    isExtended: false,
                    onPressed: () {},
                    child: Icon(Icons.perm_scan_wifi),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ListView(
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
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cardDiAtasAw(context, Colors.red),
                  cardDiAtasAw(context, Colors.blue),
                  cardDiAtasAw(context, Colors.green),
                  cardDiAtasAw(context, Colors.orange),
                  cardDiAtasAw(context, Colors.purple),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      icons.length,
                      (index) => icon(icons[index], "Bayu"),
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      icons.length,
                      (index) => icon(icons[index], "Bayu"),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget icon(IconData wkwkwk, String title) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 1,
                    spreadRadius: 5,
                    color: Colors.black.withOpacity(0.01)),
              ],
              color: color.AppColor.homePageBoxKecil,
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            wkwkwk,
            size: 25,
            color: color.AppColor.homePageBox,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(title),
      ],
    );
  }

  Container cardDiAtasAw(BuildContext context, Color colorx) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("astest/bguyeach.png"), fit: BoxFit.cover),
          // color: colorx,
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
    );
  }
}
