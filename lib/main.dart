import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
    length: 5,
    child: Scaffold(
      appBar:  AppBar(
        title: const Text('My Comic Library'),
        bottom: TabBar(
          isScrollable: true,
          tabs: [
            Tab(text: 'Home'),
            Tab(text: 'Downloaded'),
            Tab(text: 'Library'),
            Tab(text: 'Upcoming'),
            Tab(text: 'Settings'),
          ],
          ),
      ),
      body: TabBarView(
        children: [
          HomeTab(),
          DownloadedTab(),
          ServerTab(),
          UpcomingTab(),
          SettingsTab(),
        ],
      ),
    ), 
  );
}
}

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings'),
    );
  }
}

class UpcomingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Upcoming'),
    );
  }
}

class ServerTab extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Server'),
    );
  }
}

class DownloadedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Downloaded'),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScrollArea(title: 'Continue Reading..'),
          ScrollArea(title: 'Recommended')
        ],
      ),
    );
  }
}



class ScrollArea extends StatelessWidget {
  final String title;

  const ScrollArea({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200,
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleMedium),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(width: 200, height: 120, color: Colors.red),
                SizedBox(width: 12),
                Container(width: 200, height: 120, color: Colors.green),
                SizedBox(width: 12),
                Container(width: 200, height: 120, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}