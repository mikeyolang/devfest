import 'package:devfest/usedata.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Your Adventure in Provider For Large Screens For Large Screens'),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9, // Maintain a 16:9 aspect ratio for the form
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      userData.addEntry(nameController.text, emailController.text);
                      Navigator.pop(context);
                    },
                    child: const Text('Save Data and Return'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
