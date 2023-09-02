

import 'package:flutter/material.dart';

class EditProfileViewModel {
  final TextEditingController usernameController = TextEditingController();

  // Normally, you might want to use a service or database to update the username.
  // For the sake of this example, let's assume this method updates the username.
  void updateUsername() {
    final String newUsername = usernameController.text;

    if (newUsername.startsWith('@')) {
      // Update the username in the database or some state management service.
      ('Username updated to: $newUsername');
    } else {
      ('Username must start with @ symbol.');
    }
  }
}
