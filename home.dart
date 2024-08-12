import 'package:flutter/material.dart';
import 'package:navigation_bar/chat.dart';
import 'package:navigation_bar/dashboard.dart';
import 'package:navigation_bar/profile.dart';
import 'package:navigation_bar/setting.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screen = [Dashboard(), Chat(), Profile(), Setting()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              //   //Dashboard

              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Dashboard();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            color: currentTab == 0
                                ? Colors.redAccent
                                : Colors.amber),
                      )
                    ],
                  ),
                ),


                //Chat

                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Chat();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat,
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Chat",
                        style: TextStyle(
                            color: currentTab == 1 ? Colors.cyanAccent : Colors.red),
                      )
                    ],
                  ),
                ),
              ],
            ),


            //Right TabBar Icons

            //Profile

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Profile();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_off,
                        color: currentTab == 2 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                            color: currentTab == 2 ? Colors.pinkAccent : Colors.purpleAccent),
                      )
                    ],
                  ),
                ),

                //Setting


                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = Setting();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: currentTab == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Setting",
                        style: TextStyle(
                            color: currentTab == 3 ? Colors.black : Colors.indigo),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
