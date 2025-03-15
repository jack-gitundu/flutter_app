import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal, brightness: Brightness.dark),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Mapp'),
          // centerTitle: false,
          // leading: Icon(Icons.login),
          // actions: [Text('Logout'), Icon(Icons.login)],
          // backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Text('Drawer'),
              ),
              ListTile(
                title: Text('Logout'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('You have clicked the floating action button');
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onDestinationSelected: (int value) {},
          selectedIndex: 1,
        ),
      ),
    );
  }
}
