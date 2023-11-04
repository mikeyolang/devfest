import 'package:devfest/formscreen.dart';
import 'package:devfest/usedata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    double fontSize = 20.0;
    double padding = 16.0;

    // Adjust font size and padding based on screen width
    if (screenWidth < 600) {
      fontSize = 16.0;
      padding = 8.0;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Efficient State Management Using Provider",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Name: ${userData.name}',
                style: TextStyle(fontSize: fontSize),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Email: ${userData.email}',
                style: TextStyle(fontSize: fontSize),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormScreen()));
              },
              child: Padding(
                padding: EdgeInsets.all(padding),
                child: const Text('Go to Form'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
