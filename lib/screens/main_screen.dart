import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sport_upeu/resources/constans.dart';
import 'package:sport_upeu/screens/event_screen.dart';
import 'package:sport_upeu/screens/fixture_screen.dart';
import 'package:sport_upeu/screens/login_screen.dart';
import 'package:sport_upeu/screens/map_screen.dart';
import 'package:sport_upeu/screens/positions_screen.dart';
import 'package:sport_upeu/screens/regulation_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List<Widget> screens = const [
    FixtureScreen(), //0
    PositionsScreen(), //1
    EventScreen(), //2
    RegulationScreen(), //3
    MapScreen(), //4
  ];

  List<IconData> iconList = [
    Iconsax.calendar,
    Iconsax.award,
    Iconsax.home,
    Iconsax.edit,
    Iconsax.map,
  ];

  List<String> titleList = [
    'FIXTURE',
    'POSICIONES',
    'ANIVERSARIO UPEU',
    'REGLAMENTO',
    'MAPA'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Constants.primaryColor,
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/imgdrawer.png'),
                      fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/avatar.png'),
                          minRadius: 20,
                          maxRadius: 30,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Align(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Jos Villegas Pacheco',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Egresado',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                TablerIcons.soccer_field,
                color: Colors.white,
              ),
              title: const Text(
                "Resultados",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => setState(() {
                currentTab = 2;
              }),
            ),
            ListTile(
              leading: const Icon(
                TablerIcons.map_pin_2,
                color: Colors.white,
              ),
              title: const Text(
                "Mapa",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => setState(() {
                currentTab = 4;
              }),
            ),
            ListTile(
              leading: const Icon(
                TablerIcons.schema,
                color: Colors.white,
              ),
              title: const Text(
                "Fixture",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => setState(() {
                currentTab = 0;
              }),
            ),
            ListTile(
              leading: const Icon(
                TablerIcons.trophy,
                color: Colors.white,
              ),
              title: const Text(
                "Posiciones",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => setState(() {
                currentTab = 1;
              }),
            ),
            ListTile(
              leading: const Icon(
                TablerIcons.scale,
                color: Colors.white,
              ),
              title: const Text(
                "Reglamento",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => setState(() {
                currentTab = 3;
              }),
            ),
            const SizedBox(
              height: 280,
            ),
            ListTile(
              leading: const Icon(
                TablerIcons.logout,
                color: Colors.white,
              ),
              title: const Text(
                "Sign out",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: const LoginScreen(),
                        type: PageTransitionType.topToBottom));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          titleList[currentTab],
          style: TextStyle(
            color: Constants.whiteColor,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25))),
        backgroundColor: Constants.primaryColor,
        elevation: 0.0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu),
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Constants.secondaryColor,
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 0;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 0 ? TablerIcons.schema : TablerIcons.schema,
                    color: currentTab == 0
                        ? Constants.primaryColor
                        : Constants.whiteColor,
                  ),
                  Text(
                    "Fixture",
                    style: TextStyle(
                        fontSize: 12,
                        color: currentTab == 0
                            ? Constants.primaryColor
                            : Constants.whiteColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 1;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 1 ? TablerIcons.trophy : TablerIcons.trophy,
                    color: currentTab == 1
                        ? Constants.primaryColor
                        : Constants.whiteColor,
                  ),
                  Text(
                    "Posiciones",
                    style: TextStyle(
                        fontSize: 12,
                        color: currentTab == 1
                            ? Constants.primaryColor
                            : Constants.whiteColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 2;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 2
                        ? TablerIcons.soccer_field
                        : TablerIcons.soccer_field,
                    color: currentTab == 2
                        ? Constants.primaryColor
                        : Constants.whiteColor,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                        fontSize: 12,
                        color: currentTab == 2
                            ? Constants.primaryColor
                            : Constants.whiteColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 3;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 3 ? TablerIcons.scale : TablerIcons.scale,
                    color: currentTab == 3
                        ? Constants.primaryColor
                        : Constants.whiteColor,
                  ),
                  Text(
                    "Reglamento",
                    style: TextStyle(
                        fontSize: 12,
                        color: currentTab == 3
                            ? Constants.primaryColor
                            : Constants.whiteColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                currentTab = 4;
              }),
              child: Column(
                children: [
                  Icon(
                    currentTab == 4
                        ? TablerIcons.map_pin_2
                        : TablerIcons.map_pin_2,
                    color: currentTab == 4
                        ? Constants.primaryColor
                        : Constants.whiteColor,
                  ),
                  Text(
                    "Mapa",
                    style: TextStyle(
                        fontSize: 12,
                        color: currentTab == 4
                            ? Constants.primaryColor
                            : Constants.whiteColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: currentTab,
        children: screens,
      ),
    );
  }
}
