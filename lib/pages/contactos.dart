import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/contactsitems.dart';
import 'package:flutter/material.dart';
import 'package:aipc/components/Contacts_Item.dart';

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
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
                  ContactsItemVarios(itemType: 1),
                  ContactsItemVarios(itemType: 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ContactsItemVarios(itemType: 3), ContactsItem()],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: navButtons(
              goBack: () {
                Navigator.pop(context);
              },
            )));
  }
}
