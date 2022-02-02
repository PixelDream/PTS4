import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new feed());
  }
}

class feed extends StatelessWidget {
  const feed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff13334C),
        title:TextField(
          style: TextStyle(fontSize: 12),
          decoration: InputDecoration(
            hintText: "Rechercher",
            filled:true,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
              fillColor: Color(0xff1c4969),
            hintStyle: TextStyle(color: Colors.white,fontSize: 12),
            prefixIcon: Icon(Icons.search),
          ),
        )
      ),
      backgroundColor: Colors.white,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 15),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle,
                  color: Color(0xffFD5F00),
              ),
              child: Icon(Icons.add, size: 30),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        color: Color(0xff13334C),
        padding: new EdgeInsets.only(bottom:1),
        child: Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Color(0xff13334C),
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Color(0xffFD5F00),
              bottomAppBarColor: Colors.green,
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.grey))), // sets the inactive color of the `BottomNavigationBar`
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex:0,
              items: [
                BottomNavigationBarItem(
                    icon: new Icon(Icons.home,color: Colors.white,),
                    title: new Text('Home',style: TextStyle(color: Colors.white),),

                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.search,color: Colors.white,),
                  title: new Text('Search',style:TextStyle(color:Colors.white),),
                ),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_border,color: Colors.transparent,),
                    title: Text('Center',style: TextStyle(color: Colors.transparent)),
                ),

                const BottomNavigationBarItem(
                    icon: Icon(Icons.perm_identity,color: Colors.white,),
                    title: Text('Person',style: TextStyle(color: Colors.white),)
                ),
                const BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz,color: Colors.white,),
                    title: Text('More',style: TextStyle(color: Colors.white),)
                ),

              ]),
        ),
      ),
    );
  }
}
