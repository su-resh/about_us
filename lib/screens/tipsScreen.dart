import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('💡Tips💡'),
        elevation: 1,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 2,
              child: ListTile(
                title: Text('Enable "God Mode"'),
                subtitle: Text(
                    "Create a folder and name it GodMode.{ED7BA470-8E54-465E-825C-99712043E01C} for quick access to all system settings"),
              ),
            ),
            Card(
              elevation: 2,
              child: ListTile(
                title: Text('Protect Your Privacy'),
                subtitle: Text(
                    'Manage data sharing and updates in Settings > Privacy.'),
              ),
            ),
            Card(
              elevation: 2,
              child: ListTile(
                title: Text('Utilize Windows Search'),
                subtitle: Text(
                    'Quickly find files, apps, and settings using Win + S or the search bar.'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Tips',
          ),
        ],
        currentIndex: 2,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/about');
              break;
          }
        },
      ),
    );
  }
}
