import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:motor_sheba/Components/horizontal_listview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      margin: EdgeInsets.all(10),
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 3000),
        dotSize: 4.0,
        dotSpacing: 15.0,
        dotColor: Colors.lightGreenAccent,
        indicatorBgPadding: 5.0,
        dotBgColor: Colors.purple.withOpacity(0.5),
        borderRadius: true,
        moveIndicatorFromBottom: 180.0,
        noRadiusForIndicator: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('Motor Sheba'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //  Header
            UserAccountsDrawerHeader(
                accountName: Text('Ashaduzzaman'),
                accountEmail: Text('ashad@myolbd.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.black87,),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Products'),
                leading: Icon(Icons.store, color: Colors.black87,),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Services'),
                leading: Icon(Icons.build, color: Colors.black87,),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Orders'),
                leading: Icon(Icons.fact_check, color: Colors.black87,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Contact Us'),
                leading: Icon(Icons.call, color: Colors.black87,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.black87,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            )
          ],
        ),
      ),
      body: new ListView(
        children: [
          imageCarousel,
          Padding(padding: const EdgeInsets.all(10.0),
            child: Text('Categories'),
          ),
          Container(
            height: 80.0,
            child:Category(),
          )
        ],
      ),
    );
  }
}
