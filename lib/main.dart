import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  var textStyle = TextStyle(
      fontFamily: 'OpenSans', fontWeight: FontWeight.bold, color: Colors.blue
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: new BorderSide(color: Colors.blue, width:2.0)
          )
        )
      ),
      home: Scaffold(

        //Specifying the app Bar here
        backgroundColor: Colors.orangeAccent,
        appBar: new AppBar(
          //leading: new Icon(Icons.menu),
          title: new Text('Personal Portfolio'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.call),
              onPressed: () {}
            ),
            new IconButton(icon: new Icon(Icons.mail), onPressed: (){})
          ],
        ),

        body: ListView(

          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          children: [
            Card(

                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                    CircleAvatar(
                      backgroundImage : AssetImage('assets/images/profile.png'),
                      radius: 80,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                    Divider(),
                    ListTile(
                      title: Text(Strings.studentFirstName, style: textStyle),
                      subtitle: Text(Strings.studentLastName),
                      leading: Icon(
                        Icons.person, color: Colors.blue,
                      )
                    ),
                    Divider(),
                    ListTile(
                      title: Text(Strings.studentDegreeName, style: textStyle),
                      leading: Icon(Icons.school, color: Colors.blue),
                      subtitle: Text(Strings.studentDeptName)
                    ),
                    Divider(),
                    ListTile(
                      title: Text(Strings.studentCollegeName, style: textStyle),
                      leading: Icon(Icons.account_balance_sharp, color: Colors.blue),
                      subtitle: Text(Strings.studentCollegeLocation),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(Strings.studentPhoneNumber, style: textStyle),
                      subtitle: Text(Strings.studentPhoneNumberLabel),
                      leading: Icon(Icons.call, color: Colors.blue)
                    ),
                    Divider(),
                    ListTile(
                      title: Text(Strings.studentEmailID,style: textStyle),
                      subtitle: Text(Strings.studentEmailLabel),
                      leading: Icon(Icons.location_city, color: Colors.blue),
                    )
                  ],
                ),

              ),

          ],
          
        ),

        floatingActionButton: new FloatingActionButton(
            onPressed: (){}, child: new Icon(Icons.share)
        ),
          
        ),

      );

  }
}

 // This trailing comma makes auto-formatting nicer for build methods.
