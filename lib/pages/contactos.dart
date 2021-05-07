import 'package:aipc/components/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:aipc/components/Contacts_Item.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Contactos",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContactsItem(),
                  ContactsItem(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ContactsItem(), ContactsItem()],
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            BottomAppBar(color: Colors.white, child: navButtons()));
  }
}
