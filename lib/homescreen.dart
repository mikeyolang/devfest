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
        title: const Text('Efficient State Management in Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the World of Flutter!',
              style: TextStyle(fontSize: 24),
            ),
            if (userData.entries.isNotEmpty)
              Column(
                children: userData.entries.map((entry) {
                  return Padding(
                    padding: EdgeInsets.all(padding),
                    child: Column(
                      children: [
                        Text(
                          'Name: ${entry['name']}',
                          style: TextStyle(fontSize: fontSize),
                        ),
                        Text(
                          'Email: ${entry['email']}',
                          style: TextStyle(fontSize: fontSize),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen(),
                    ),
                  );
                },
                child: const Text('Fill Your Data'),
              ),
            ),
            SizedBox(height: padding),
            ElevatedButton(
              onPressed: () {
                userData.clearEntries();
              },
              child: const Text('Clear Data'),
            ),
          ],
        ),
      ),
    );
  }
}
