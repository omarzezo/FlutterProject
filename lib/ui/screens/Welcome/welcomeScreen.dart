import 'package:blocpattern/Utils/Utils.dart';
import 'package:blocpattern/ui/screens/LoginNow/LoginNow.dart';
import 'package:blocpattern/ui/screens/signUp/SignUpScreen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenPageState createState() => _WelcomeScreenPageState();
}

class _WelcomeScreenPageState extends State<WelcomeScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final welcomeText = Text(
      'Welcome',
      style: TextStyle(
          color: Colors.grey[800],
          fontWeight: FontWeight.w700,
//          fontStyle: FontStyle.italic,
          fontFamily: 'Open Sans',
          fontSize: 25)
    );
    double screenWidth = MediaQuery.of(context).size.width/1.4;

    final logoImg = Image.asset("images/welcome_img.png",width: screenWidth,);

    final pleaseLogin = Text(
        'Please login or sign up to continue using our app',
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w300,
//          fontStyle: FontStyle.italic,
            fontFamily: 'Open Sans',
            fontSize: 14)
    );

    final enterVia = Text(
        'Enter via social networks',
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w300,
//          fontStyle: FontStyle.italic,
            fontFamily: 'Open Sans',
            fontSize: 14)
    );


    final twoButtons=ListTile(
      title: Row(
        children: <Widget>[
          Expanded(
            flex: 10,
            child: Container(

              height: 58,
              child: RaisedButton(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    ),

                child: Image.asset("images/ic_twitter.webp",width: 30,height: 30,),
                onPressed: () {}
                //                ,child: Text("Clear")
                ,color: Color(0xff76a9ea),
//          textColor: Colors.white
              ),
            )

          ),
          Expanded(
            flex: 1,
            child: Text(""),
          ),
          Expanded(
            flex: 10,
              child: Container(
                  height: 58,
                  child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Image.asset("images/ic_face.webp",width: 30,height: 30,),
                onPressed: () {}
//                ,child: Text("Clear")
                ,color: Color(0xff475993),
//                textColor: Colors.white
              )
          ),
          )
        ],
      ),
    );

    final orLoginWith = Text(
        'or login with email',
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w300,
//          fontStyle: FontStyle.italic,
            fontFamily: 'Open Sans',
            fontSize: 14
        )
    );


    final signUpBtn=ListTile(
      title: Row(
        children: <Widget>[
          Expanded(
              flex: 10,
              child: Container(

                height: 58,
                child: RaisedButton(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(createRoute(SignUpScreen()));
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(builder: (context) => SignUpScreen()),
//                    );
                  }
                  ,child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Open Sans',
                        fontSize: 16
                    ),
                )
                  ,color: Color(0xff3c82ff),
                  textColor: Colors.white
                ),
              )

          )
        ],
      ),
    );



    final twoTexts=
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align (
            alignment: Alignment.center,
            child: Text(
                'Donot have an account ?',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Open Sans',
                    fontSize: 14
                )
            ),
          ),
          Container(width: 8,),
          Align (
            alignment: Alignment.center,
            child: InkWell(

                 child : Text(
                'Login',
                style: TextStyle(
                    color: Color(0xff76a7ff),
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Open Sans',
                    fontSize: 14
                )
            ),
            onTap: () {
              Navigator.of(context).push(createRoute(LoginNow()));
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => LoginNow()),
//              );
            },

            )

          )
        ],
      );



    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4.0,25.0,4.0,25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 45.0),
                welcomeText,
                Container(height:10),
                pleaseLogin,
                Container(height:30),
                logoImg,
                Container(height:40),
                enterVia,
                Container(height:25),
                twoButtons,
                Container(height:40),
                orLoginWith,
                Container(height:40),
                signUpBtn,
                Container(height:10),
                twoTexts,
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
