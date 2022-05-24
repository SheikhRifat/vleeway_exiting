import 'package:flutter/material.dart';
import 'package:vleeway_app/tabview/all.dart';


class NotificationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('Notifications',style: TextStyle(color: Colors.white),),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 35,
              decoration: BoxDecoration(
               border: Border.all(color: Colors.red,width: 1),
               borderRadius: BorderRadius.circular(10),
              ),
         child: TabBar(
               indicator: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(10),
               ),
               tabs: [
                Text('All'),
                Text('Recent'),
             ]),
            
      
            ),
            SizedBox(
              height: 500,
              child: TabBarView(children: [
                All(),
                All(),
              ]),

            )
          ],
        ),
        
      ),
    );
  }
}