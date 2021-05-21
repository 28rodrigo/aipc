import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/contactsitems.dart';
import 'package:aipc/pages/contactoDetail.dart';
import 'package:aipc/pages/criarContacto.dart';
import 'package:aipc/pages/semContactos.dart';
import 'package:aipc/pages/tecladoPesquisa.dart';
import 'package:flutter/material.dart';
import 'package:aipc/components/Contacts_Item.dart';
import 'package:aipc/functions/contacto_data.dart';

class ContactsPage extends StatefulWidget {
  final String specificLeter;
  Contactos contactos;

  ContactsPage({this.specificLeter, @required this.contactos});
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<Map<String, String>> contactos;
  bool letter = false;
  int maxLength;
  int pageNumber = 0;
  List<Map<String, String>> contactosLetter = [];
  int numberOfPages;
  void _increasePage() {
    print(numberOfPages);
    print(contactos.length);
    print(pageNumber);
    if (pageNumber < numberOfPages) {
      setState(() {
        pageNumber++;
      });
    }
  }

  void _decreasePage() {
    if (pageNumber > 0) {
      setState(() {
        pageNumber--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    contactos = widget.contactos.getContactos();
    if (widget.specificLeter != null) {
      letter = true;
      contactos.forEach((element) {
        if (element.values.elementAt(1).startsWith(widget.specificLeter)) {
          contactosLetter.add(element);
        }
      });
      if (contactosLetter.length == 0) {
        return SemContactos();
      }
      numberOfPages = ((contactosLetter.length - 1) / 4).round();
      // ignore: unnecessary_statements
      numberOfPages == 0 ? numberOfPages++ : null;
      if (pageNumber == 0) pageNumber = 1;
      maxLength = contactosLetter.length - 1;
    } else {
      maxLength = contactos.length - 1;
      letter = false;
      numberOfPages = ((contactos.length - 1) / 4).round();
      // ignore: unnecessary_statements
      numberOfPages == 0 ? numberOfPages++ : null;
      if (pageNumber == 0) pageNumber = 0;
    }
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
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContactsItemVarios(
                          itemType: 3,
                          onClick: () {},
                        ),
                        ContactsItem(
                          onClick: () {
                            handleContactsDetail(context, contactos[0]);
                          },
                          contactDetail: contactos[0],
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (pageNumber * 4) - 4 <= maxLength
                            ? ContactsItem(
                                onClick: () {
                                  handleContactsDetail(
                                      context,
                                      letter
                                          ? contactosLetter[
                                              (pageNumber * 4) - 4]
                                          : contactos[(pageNumber * 4) - 4]);
                                },
                                contactDetail: letter
                                    ? contactosLetter[(pageNumber * 4) - 4]
                                    : contactos[(pageNumber * 4) - 4],
                              )
                            : SizedBox(),
                        (pageNumber * 4) - 3 <= maxLength
                            ? ContactsItem(
                                onClick: () {
                                  handleContactsDetail(
                                      context,
                                      letter
                                          ? contactosLetter[
                                              (pageNumber * 4) - 3]
                                          : contactos[(pageNumber * 4) - 3]);
                                },
                                contactDetail: letter
                                    ? contactosLetter[(pageNumber * 4) - 3]
                                    : contactos[(pageNumber * 4) - 3],
                              )
                            : SizedBox()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (pageNumber * 4) - 2 <= maxLength
                            ? ContactsItem(
                                onClick: () {
                                  handleContactsDetail(
                                      context,
                                      letter
                                          ? contactosLetter[
                                              (pageNumber * 4) - 2]
                                          : contactos[(pageNumber * 4) - 2]);
                                },
                                contactDetail: letter
                                    ? contactosLetter[(pageNumber * 4) - 2]
                                    : contactos[(pageNumber * 4) - 2],
                              )
                            : SizedBox(),
                        (pageNumber * 4) - 1 <= maxLength
                            ? ContactsItem(
                                onClick: () {
                                  handleContactsDetail(
                                      context,
                                      letter
                                          ? contactosLetter[
                                              (pageNumber * 4) - 1]
                                          : contactos[(pageNumber * 4) - 1]);
                                },
                                contactDetail: letter
                                    ? contactosLetter[(pageNumber * 4) - 1]
                                    : contactos[(pageNumber * 4) - 1],
                              )
                            : SizedBox()
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
              increase: () {
                _increasePage();
              },
              decrease: () {
                _decreasePage();
              },
            )));
  }

  void handleAddContact(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CriarContacto(
                  contactos: widget.contactos,
                )));
  }

  void handlePesquisar(context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TecladoPesquisaPage(
                  contactos: widget.contactos,
                )));
  }

  void handleContactsDetail(context, contactDetail) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ContactoDetailsPage(
                  contactDetail: contactDetail,
                )));
  }
}
