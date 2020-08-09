import 'package:blocpattern/Utils/Utils.dart';
import 'package:blocpattern/ui/screens/HomeScreen/HomeScreen.dart';
import 'package:blocpattern/ui/screens/LoginNow/LoginNow.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenPageState createState() => _SignUpScreenPageState();
}
class _SignUpScreenPageState extends State<SignUpScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {

    String radioItem = '';

    final signUpText = Text(
        'Sign Up',
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w700,
//          fontStyle: FontStyle.italic,
            fontFamily: 'Open Sans',
            fontSize: 25)
    );

    final pleaseSignUp = Text(
        'Please Sign up to enter in our app',
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

    final orSignUpText = Text(
        'or Sogn up with email',
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w300,
//          fontStyle: FontStyle.italic,
            fontFamily: 'Open Sans',
            fontSize: 14
        )
    );

    final edittEextEmail =
    Padding(
      padding: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
      child: TextField(
        style: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.w700,
            fontFamily: 'Open Sans',
            fontSize: 14
        ),
        decoration: new InputDecoration(
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.teal)),
          hintText: 'Email',
//                  helperText: 'Keep it short, this is just a demo.',
//                  labelText: 'Life story',
//                  prefixIcon: const Icon(
//                    Icons.person,
//                    color: Colors.green,
//                  ),
//                  prefixText: ' ',
//                  suffixText: 'USD',
//                  suffixStyle: const TextStyle(color: Colors.green)
        ),
      ),
    );

    final editTextPassword =
    Padding(
        padding: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
        child : TextField(
          style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w700,
              fontFamily: 'Open Sans',
              fontSize: 14
          ),
          decoration: new InputDecoration(
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.teal)),
            hintText: 'Password',

//                  helperText: 'Keep it short, this is just a demo.',
//                  labelText: 'Life story',
//                  prefixIcon: const Icon(
//                    Icons.person,
//                    color: Colors.green,
//                  ),
//                  prefixText: ' ',
//                  suffixText: 'USD',
//                  suffixStyle: const TextStyle(color: Colors.green)
          ),
        )
    );

    final signUpUpBtn=ListTile(
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
                    onPressed: () {}
                    ,child: Text(
                    'Sign Up',
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



    final twoTexts=
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align (
          alignment: Alignment.center,
          child: Text(
              'Already have an account ?',
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
          child: InkWell (
                child : Text(
              'Login',
              style: TextStyle(
                  color: Color(0xff76a7ff),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Open Sans',
                  fontSize: 14
              )
          ),
            onTap: (){

//              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginNow()),
                Navigator.of(context).push(createRoute(LoginNow()));
//                Navigator.of(context).push(UtilsFunctions().);
            },
          )
        )
      ],
    );


    final forgetPassword =

    Padding(
        padding: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
        child : Text(
          'Forgot password ?',
          style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w700,
              fontFamily: 'Open Sans',
              fontSize: 14
          ),
        )
    )
    ;

    final customRadioButton= Padding(
        padding: const EdgeInsets.fromLTRB(16.0,0.0,16.0,0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                setState(() {
                  isChecked = !isChecked;
                });
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff3c82ff), width: 1.5),
                    borderRadius: BorderRadius.circular(60)
                ),
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      color: isChecked ? Color(0xff3c82ff) : Colors.white,
                      borderRadius: BorderRadius.circular(60)
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Text('I agree with Private Policy',
                style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Open Sans',
                    fontSize: 16
                ))
          ],
        )
    );


    final rowOfRememberMe=
    Padding(padding: const EdgeInsets.fromLTRB(6.0,8.0,6.0,0.10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customRadioButton,
//              forgetPassword
            ]
        )
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
                signUpText,
                Container(height:10),
                pleaseSignUp,
                Container(height:30),
                enterVia,
                Container(height:25),
                twoButtons,
                Container(height:40),
                orSignUpText,
                Container(height:40),
                edittEextEmail,
                Container(height:20),
                editTextPassword,
                Container(height:20),
                rowOfRememberMe,
                Container(height:20),
                signUpUpBtn,
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
