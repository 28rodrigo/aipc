import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/contactsitems.dart';
import 'package:aipc/pages/contactoDetail.dart';
import 'package:aipc/pages/criarContacto.dart';
import 'package:aipc/pages/tecladoPesquisa.dart';
import 'package:flutter/material.dart';
import 'package:aipc/components/Contacts_Item.dart';
import 'package:aipc/functions/contacto_data.dart';

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> contactos = getContactos();
    int pageNumber = 0;
    int numberOfPages = ((contactos.length - 1) / 4).round();
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
          child: pageNumber == 0
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ContactsItemVarios(
                            itemType: 1,
                            onClick: () {
                              handleAddContact(context);
                            }),
                        ContactsItemVarios(
                          itemType: 2,
                          onClick: () {
                            handlePesquisar(context);
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ContactsItemVarios(
                          itemType: 3,
                          onClick: () {},
                        ),
                        ContactsItem(
                          onClick: () {
                            handleContactsDetail(context);
                          },
                        )
                      ],
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ContactsItem(
                          onClick: () {
                            handleContactsDetail(context);
                          },
                        ),
                        ContactsItem(
                          onClick: () {
                            handleContactsDetail(context);
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ContactsItem(
                          onClick: () {
                            handleContactsDetail(context);
                          },
                        ),
                        ContactsItem(
                          onClick: () {
                            handleContactsDetail(context);
                          },
                        )
                      ],
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

  void handleAddContact(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CriarContacto()));
  }

  void handlePesquisar(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TecladoPesquisaPage()));
  }

  void handleContactsDetail(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ContactoDetailsPage()));
  }
}
