import 'package:flutter/material.dart';
import 'user.dart';

class AddUserDialog extends StatefulWidget {
  final Function(User) addUser;
  const AddUserDialog(this.addUser);
  @override
  State<AddUserDialog> createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  @override
  Widget build(BuildContext context) {
    Widget buildTextfield(String hint, TextEditingController controller) {
      return Container(
        margin: const EdgeInsets.all(4),
        child: TextField(
          decoration: InputDecoration(
              labelText: hint,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black38,
              ))),
          controller: controller,
        ),
      );
    }

    var typeController = TextEditingController();
    var usernameController = TextEditingController();
    var adressController = TextEditingController();
    var numeroController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(8),
      height: 350,
      width: 400,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "add annonce",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.lightGreenAccent,
              ),
            ),
            buildTextfield("categorie", typeController),
            buildTextfield("username", usernameController),
            buildTextfield("adress", adressController),
            buildTextfield("numero phone", numeroController),
            ElevatedButton(
              onPressed: () {
                final user = User(usernameController.text,
                    adressController.text, numeroController.text);
                widget.addUser(user);
                Navigator.of(context).pop();
              },
              child: const Text("create annonce"),
            ),
          ],
        ),
      ),
    );
  }
}
