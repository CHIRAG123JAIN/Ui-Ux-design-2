import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'MainPage.dart';
class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage(
            'images/background.jpg',
          ),
          fit: BoxFit.cover,),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.7),Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.7)]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20),
              child:
              Text("Find The Best Loaction Near You For A Good Night." ,style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),),
            SizedBox(height: 13,),
            Container(
              child: Column(
          
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(right: 88),
                  child:Text("Let us find you an event \nfor your Interest.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
                  ),
            ),
                ],

              ),
            ),
            SizedBox(
              height: 130,
            ),
            
          Container(
            width: 250,margin: EdgeInsets.only(bottom:20 ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: 
                  [Colors.yellow , Colors.yellow])
                ),
                child: MaterialButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder:(context) =>MainPage()
                    ),
                  );
                },

                child: Text("Find The Nearset Event" , style: TextStyle(color: Colors.black),
                
                ),
                ),

              ),
            ],
        
      ),
        ),
      ),
    );
  }
}