import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/makecalls.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/pages/editarcontacto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:toast/toast.dart';

class ContactoDetailsPage extends StatefulWidget {
  final Map<String, String> contactDetail;

  ContactoDetailsPage({@required this.contactDetail});

  @override
  _ContactoDetailsPageState createState() => _ContactoDetailsPageState();
}

class _ContactoDetailsPageState extends State<ContactoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            widget.contactDetail.values.elementAt(1),
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
          actions: [
            IconButton(
                tooltip: "Eliminar Contacto:" +
                    widget.contactDetail.values.elementAt(1),
                icon: Icon(
                  Icons.delete,
                  size: deviceHeight * 0.04,
                  color: Colors.black,
                ),
                onPressed: () {
                  try {
                    _data.contactos.contactos.removeWhere((element) =>
                        element.values.elementAt(0) ==
                        widget.contactDetail.values.elementAt(0));
                    _data.addContact(); //atualizar contactos
                    Toast.show("Contacto eliminado com sucesso!", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                    Navigator.pop(context);
                  } catch (e) {
                    Toast.show("Erro a eliminar contacto!", context,
                        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                    Navigator.pop(context);
                  }
                }),
          ],
        ),
        body: SwipeDetector(
          onSwipeRight: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                widget.contactDetail.values.elementAt(3) != 'Icon-Euro'
                    ? Container(
                        width: deviceWidth * 0.55,
                        height: deviceWidth * 0.55,
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                              image: NetworkImage(
                                  widget.contactDetail.values.elementAt(3)),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black, width: 2)),
                      )
                    : Container(
                        width: deviceWidth * 0.55,
                        height: deviceWidth * 0.55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Theme.of(context).accentColor,
                                width: 2)),
                        child: Icon(
                          Icons.euro,
                          size: deviceWidth * 0.4,
                        ),
                      ),
                Container(
                  alignment: Alignment.center,
                  width: deviceWidth * 0.8,
                  height: deviceHeight * 0.12,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Theme.of(context).accentColor),
                      color: Theme.of(context).primaryColorDark,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditarContactoPage(
                                      contactDetail: widget.contactDetail,
                                    ))).then((value) {
                          setState(() {});
                          Navigator.pop(context);
                        });
                      },
                      style: ButtonStyle(alignment: Alignment.topCenter),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.edit,
                            size: 70,
                            color: Colors.white,
                          ),
                          Text(
                            "EDITAR",
                            style: TextStyle(
                                fontSize: deviceWidth * 0.12 * _data.count,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                ),
                Container(
                  alignment: Alignment.center,
                  width: deviceWidth * 0.8,
                  height: deviceHeight * 0.25,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Theme.of(context).accentColor),
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextButton(
                      onPressed: () {
                        callnow(
                            'tel:' + widget.contactDetail.values.elementAt(2));
                      },
                      style: ButtonStyle(alignment: Alignment.topCenter),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.call,
                            size: 70,
                            color: Colors.white,
                          ),
                          Text(
                            "LIGAR",
                            style: TextStyle(
                                fontSize: deviceWidth * 0.18 * _data.count,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(child: BackNavigation(
          goBack: () {
            Navigator.pop(context);
          },
        )));
  }
}
