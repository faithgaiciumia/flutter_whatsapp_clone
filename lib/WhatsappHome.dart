import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/pages/calls_screen.dart';
import 'package:flutter_whatsapp_clone/pages/camera_screen.dart';
import 'package:flutter_whatsapp_clone/pages/chats_screen.dart';
import 'package:flutter_whatsapp_clone/pages/status_screen.dart';

class WhatsappHome extends StatefulWidget {
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome> with SingleTickerProviderStateMixin {
  
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(vsync: this,initialIndex: 1,length: 4);

    
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Whatsapp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(text: "CHATS",),
            new Tab(text: "STATUS",),
            new Tab(text: "CALLS",)
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert),

        ],
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
           new CameraScreen(),
           new ChatsScreen(),
           new StatusScreen(),
           new CallsScreen()
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message),
        onPressed: ()=> print("open chats"),

      ),
      
    );
  }
}