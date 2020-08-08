import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {


    double screenWidth = MediaQuery.of(context).size.width;
    final logoImg = Image.asset("images/home_img.png",width: screenWidth,);
//    final logoImg = Image.asset("images/home_img.png",width: double.infinity,);

//    final logoImg = Image.asset("images/home_img.png");

    final thankYouText = Text(
        'Thank you!',
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w700,
//          fontStyle: FontStyle.italic,
            fontFamily: 'Open Sans',
            fontSize: 25)
    );

    final welcomeText = Text(
        'Now welcome to our beautiful app!',
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w300,
//          fontStyle: FontStyle.italic,
            fontFamily: 'Open Sans',
            fontSize: 14)
    );



    final letsGoBtn=ListTile(
      title: Row(
        children: <Widget>[
          Expanded(
//              flex: 10,
              child: Container(
                height: 58,
                child: RaisedButton(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    onPressed: () {}
                    ,child: Text(
                    'Let\'s go!',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Open Sans',
                        fontSize: 16
                    )
                )
                    ,color: Color(0xff3c82ff),
                    textColor: Colors.white
                ),
              )

          )
        ],
      ),
    );



    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(height:10),
                logoImg,
                Container(height:10),
                thankYouText,
                Container(height:10),
                welcomeText,
                Container(height:40),
                letsGoBtn,
                Container(height:25),
//                SizedBox(
//                  height: 155.0,
//                  child: Image.asset(
//                    "assets/logo.png",
//                    fit: BoxFit.contain,
//                  ),
//                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
