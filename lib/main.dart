import 'package:flutter/material.dart';
import 'package:foodorder/DetailsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Food Order',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var selectedCard = 'WEIGHT';



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xFF21BFBD),
        body: ListView(
          children: <Widget> [
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed:  () {},
                    ),
                    Container(
                      width: 125.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          IconButton(
                            icon: Icon(Icons.filter_list),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.white,
                            onPressed: () {},
                          )
                        ],
                      )
                    )
                ],
                ),
            ),

            SizedBox(height: 25.2),
            Padding(
              padding: EdgeInsets.only(left:40.0),
              child: Row(
                  children: <Widget> [
                  Text('Restaurant',
                    style: TextStyle(
                    fontFamily: 'Patrick Hand',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0
                    ),),

             SizedBox(width:10.0),
               Text('Menu',
                 style: TextStyle(
                 fontFamily: 'Patrick Hand',
                 color: Colors.white,
                 fontSize: 25.0
                 ),),
                ]
            )
            ),

            SizedBox(height: 45.0,),
            Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left:25.0, right:25.0),
                children: <Widget> [
                  Padding(
                    padding:EdgeInsets.only(top: 45.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 300,
                      child: ListView(
                        children: <Widget> [
                          //_buildFoodItem('assets/p1.jpeg', "dish 1", " 50.00"),
                          //_buildFoodItem('assets/p2.jpeg', "dish 2", " 40.00"),
                          //_buildFoodItem('assets/p3.jpeg', "dish 3", " 33.00"),
                          _buildFoodItem('assets/p1.png',"dish 1"," 70.00"),
                          _buildFoodItem('assets/p2.png',"dish 2"," 40.00"),
                          _buildFoodItem('assets/p4.png',"dish 3"," 70.00"),
                          _buildFoodItem('assets/p5.png',"dish 4"," 70.00"),

                          //_buildFoodItem('assets/p6.gif', "dish 6", " 60.00"),
                        ],
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }


  Widget _buildFoodItem(String imgPath, String foodName, String price) {
     return Padding(
         padding: EdgeInsets.only(left:10.0, right:10.0, top:10.0),
       child: InkWell(
         onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsPage(imgPath, foodName, price)
            ),
            );
         },
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget> [
             Container(
              child: Row(
               children: <Widget>[
             Hero(
                 tag: imgPath,
                 child:Image (
                   image: AssetImage(imgPath),
                   fit: BoxFit.cover,
                   height: 75.0,
                   width: 75.0,
                 ),),
             SizedBox(width: 10.0),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget> [
                 Text(
                   foodName,
                   style: TextStyle(
                     fontFamily: 'Patrick Hand',
                     fontSize: 17.0,
                     fontWeight: FontWeight.bold
                   ),
                 ),
                 Text(
                   price,
                    style: TextStyle(
                      fontFamily: 'Patrick Hand',
                      fontSize: 15.0,
                      color:Colors.grey
                    ),)
               ],
             )
           ],
         )
       ),
       IconButton(
           onPressed: () {},
           color: Colors.black,
           icon: Icon(Icons.add)
       ),
           ],
         ),
    ),
    );
}
}