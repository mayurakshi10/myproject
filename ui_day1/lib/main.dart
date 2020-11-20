import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: "Roboto"),
    home: HomePage(),
  )
);
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243,1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87,),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Find Your" , style: TextStyle(color: Colors.black87, fontSize: 25),),
                  SizedBox(
                    height: 5,
                  ),
                 Text("Walpaper" ,  style: TextStyle(color: Colors.black, fontSize: 48,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                       borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black87,),
                        hintText: "Are you looking for What!!! ",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15)

                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Promo Today" , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        promoCard("assets/image1.jpg"),
                        promoCard("assets/image2.jpg"),
                        promoCard("assets/image3.jpg"),
                        promoCard("assets/image4.jpg"),
                        promoCard("assets/image5.jpg")
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image5.jpg")
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              stops: [0.3 ,0.9],
                              colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.2)
                              ]
                          )
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("AWESOME PICTURE" , style: TextStyle(color: Colors.blue, fontSize: 20),),
                        ),
                      ),
                  )
                  ) ],
              ),
            ) ,
          ],
        ),

      ),
    );
  }
  Widget promoCard(image)
  {
    return AspectRatio(
      aspectRatio: 2.62 / 3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          color: Colors.orange,
              borderRadius: BorderRadius.circular(20),
           image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage(image)
           ),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ]
        )
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: [0.1 ,0.9],
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1)
                ]
            )
          ),
        ),
      ),
    );
  }
}
