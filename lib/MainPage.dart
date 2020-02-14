import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
  leading: Icon(Icons.menu ,color: Colors.black,),
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(10),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
image: DecorationImage(image: AssetImage(
  'images/one.jpg',
),
fit: BoxFit.cover,)
            ),
            child: Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 3,color: Colors.white),
                shape: BoxShape.circle,
                color: Colors.yellow
              ),
            ),

          ),

          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white70,
                ),
                child: TextField(
decoration: InputDecoration(
  border: InputBorder.none,
  prefixIcon: Icon(Icons.search),
  hintText: 'Search Events',
  hintStyle: TextStyle(color: Colors.black,)
),
                ),
              ),
              SizedBox(height: 30,),
              makeItem("17",'images/one.jpg'),
              makeItem("18",'images/one.jpg'),
              makeItem("19",'images/one.jpg'),
              makeItem("20",'images/one.jpg'),
              makeItem("21",'images/one.jpg'),
              makeItem("22",'images/one.jpg'),
              makeItem("23",'images/one.jpg'),
              makeItem("24",'images/one.jpg'),

              

            ],
          ),

        ),
        
        ),
    );
  }
}
Widget makeItem(date,image ){
  return Row(
    
    children: <Widget>[
     Container(
       width: 50,
       height: 200,
       margin: EdgeInsets.all(20),
    
       child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
         children: <Widget>[
           Text(date.toString(),style: TextStyle(
             color: Colors.redAccent,
             fontSize: 25,
           ),),
           Text("Sep" ,style: TextStyle(
             color: Colors.black,
             fontSize: 25,fontWeight: FontWeight.bold
           ),)
         ],
       
    ),
     ),
     SizedBox(height: 10,),
Expanded(child: Container(
  
  height: 200,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    image: DecorationImage(image: AssetImage(
      image,
    ),
    
    fit: BoxFit.cover)
  ),

  child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(colors:[
        Colors.black.withOpacity(.3),Colors.black.withOpacity(.4)
      ])
    ),
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     mainAxisAlignment: MainAxisAlignment.end,
     children: <Widget>[
       Text("Bumbershoot.",style: TextStyle(
         color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
       ),),
       SizedBox(height: 10),
       Text("2019.",style:TextStyle(
         color: Colors.white,
         fontSize: 25,
         
       ))
     ],
   ),
    ),
  ),
)
    ],
  );
}