import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'about.dart'; // Import AboutPage
import 'hpv.dart'; // Import HPVPage
import 'india.dart'; // Import IndiaPage
import 'screening.dart'; // Import ScreeningPage
import 'quiz.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
    ));

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: Colors.blue.shade900, // Dark blue color
          title: Text(
            'CerviCareX',
            style: TextStyle(color: Colors.white),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.shade400,
              ),
              child: Text(
                'Options',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Book Appointments'),
              onTap: () {
                // Navigate to book appointments page
              },
            ),
            ListTile(
              title: Text('Quiz'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: GridView.count(
          crossAxisCount: 2, // Two columns
          padding: EdgeInsets.all(16.0),
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 2.5, // Aspect ratio for each block
          children: [
            _buildOptionBlock(context, 'About', AboutPage()),
            _buildOptionBlock(context, 'HPV', HPVPage()),
            _buildOptionBlock(context, 'India', IndiaPage()),
            _buildOptionBlock(context, 'Screening', ScreeningPage()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue, // Change the color of the selected item
        unselectedItemColor: Colors.grey, // Change the color of unselected items
      ),
    );
  }

  Widget _buildOptionBlock(BuildContext context, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade200, // Faded blue color
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.blue.shade900, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
