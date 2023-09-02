

import 'package:flutter/material.dart';
import '../viewmodels/edit_profile_viewmodel.dart';


class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  EditProfilePageState createState() => EditProfilePageState();
}

class EditProfilePageState extends State<EditProfilePage> {
  final EditProfileViewModel viewModel = EditProfileViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
                hintText: '@your_username',
              ),
              controller: viewModel.usernameController,
            ),
            ElevatedButton(
              onPressed: () {
                // Perform the username update
                viewModel.updateUsername();
              },
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
