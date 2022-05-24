
import 'package:flutter/material.dart';
import 'package:vleeway_app/views/home_page.dart';
import 'package:vleeway_app/views/notification_page.dart';

class CustomBottombar extends StatefulWidget {
  @override
  State<CustomBottombar> createState() => _CustomBottombarState();
}

class _CustomBottombarState extends State<CustomBottombar> with SingleTickerProviderStateMixin {


  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController= TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      
      body: TabBarView(
        children: [
          HomePage(),
          HomePage(),
          HomePage(),
          NotificationPage(),
          HomePage(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
      
        child: Container(
          color: Colors.black54,
          height: 60,
          child: TabBar(
           indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.red,width: 2,),insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 30.0)),
            tabs: [
            Tab(
              text: '',
              icon: Icon(Icons.home,color: Colors.white,),
            ),
            Tab(
              text: '',
              icon: Icon(Icons.search,color: Colors.white,),
            ),
            Tab(
              text: '',
              icon: Icon(Icons.video_call,color: Colors.white,),
            ),
            Tab(
              text: '',
              icon: Icon(Icons.notifications,color: Colors.white,),
            ),
            Tab(
              text: '',
              icon: Icon(Icons.person,color: Colors.white,),
            ),
          ],
          controller: _tabController,
          ),
        ),
      )
    );
  }
}