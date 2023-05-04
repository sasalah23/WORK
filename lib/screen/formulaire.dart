import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/list.dart';
import 'categorie_section.dart';

import 'user.dart';

class Annonce extends StatefulWidget {
  @override
  State<Annonce> createState() => _AnnonceState();
}

class _AnnonceState extends State<Annonce> {
  List<User> userlist = [];
  @override
  Widget build(BuildContext context) {
    void addUserData(User user) {
      setState(() {
        userlist.add(user);
      });
    }

    void showUserDtalog() {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              content: AddUserDialog(addUserData),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            );
          });
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showUserDtalog,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("annonce list"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              margin: const EdgeInsets.all(4),
              elevation: 8,
              child: ListTile(
                title: Text(
                  userlist[index].username,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.green,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  userlist[index].adress,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                trailing: Text(
                  userlist[index].numero,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            );
          },
          itemCount: userlist.length,
        ),
      ),
    );
  }
}
