import 'dart:math';
import 'package:flutter/material.dart';
import 'package:whatsapp_this/shared/lib/color_whatsapp.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ColorWhatsapp.greenButton,
          child: Icon(Icons.chat),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: ColorWhatsapp.greenTop,
              title: Text('WhatsApp - This'),
              expandedHeight: 100.0,
              elevation: 1.1,
              pinned: true,
              floating: true,
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.photo_camera,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  Tab(
                    child: Text('Conversas'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Chamadas'),
                  ),
                ],
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _createShowDialog('Pesquisar', 'O que deseja buscar?');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                    _createShowDialog(
                        'Configurações', 'Capitão cadê o kowalski?');
                  },
                ),
              ],
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    _createListContact(),
                    Divider(),
                    _createListContact(),
                    Divider(),
                    _createListContact(),
                    Divider(),
                    _createListContact(),
                    Divider(),
                    _createListContact(),
                    Divider(),
                    _createListContact(),
                    Divider(),
                    _createListContact(),
                    Divider(),
                    _createListContact(),
                    Divider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createListContact() {
    List<Color> colorPhoto = [
      Colors.blue,
      Colors.blue.withOpacity(0.7),
      Colors.deepPurple.withOpacity(0.7),
      Colors.purple.withOpacity(0.7),
      Colors.blueAccent,
      Colors.blueGrey,
      Colors.pink,
      Colors.greenAccent,
    ];

    final _random = Random();
    var _element = _random.nextInt(colorPhoto.length);

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: colorPhoto[_element],
        child: Text('TS'),
      ),
      title: Text('Thiago Soares'),
      subtitle: Text('Números'),
      trailing: Column(
        children: <Widget>[
          Text('13:06'),
          Icon(Icons.volume_off),
        ],
      ),
    );
  }

  Future<dynamic> _createShowDialog(String title, String text) async {
    showDialog(
      context: context,
      child: AlertDialog(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Container(
          child: Text(text),
        ),
      ),
    );
  }
}
