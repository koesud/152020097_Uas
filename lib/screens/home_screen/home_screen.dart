import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/home_screen/dashboard_tile.dart';
import 'package:pemmob_app/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dashboardList = [
    ["Math problem solve", "10", Colors.red, "assets/icons/math.png"],
    ["Task", "3", Colors.blue, "assets/icons/cone.png"],
    ["Scores", "3.8/5", Colors.yellow, "assets/icons/geometry.png"],
    ["Pending", "1", Colors.green, "assets/icons/math.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainBackgroundColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Welcome back,',
                        style: TextStyle(
                          color: kTextColorBlack,
                          fontFamily: 'Work Sans',
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'kusdinar fadjri!',
                        style: TextStyle(
                          color: kTextColorBlack,
                          fontFamily: 'Work Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.grey[300],
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://picsum.photos/536/333"),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                        color: kTextColorBlack,
                        fontFamily: 'MonumentExtended',
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            GridView.builder(
              itemCount: dashboardList.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return DashboardTile(
                  dashboardTitle: dashboardList[index][0],
                  dashboardValue: dashboardList[index][1],
                  dashboardColor: dashboardList[index][2],
                  imageName: dashboardList[index][3],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
