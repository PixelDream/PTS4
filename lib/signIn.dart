// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:myfirstappflutter/forgetPwd.dart';
import 'signUp.dart';
import 'feed.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new signIn());
  }
}


class signIn extends StatelessWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff13334C) ,
        body:Column(
          children: <Widget> [
            Image.asset('assets/Topbackground.png'),
            RichText(
                text: TextSpan(
                    text:"MUSIC PARTY",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 45,
                    ),
                    children:<TextSpan>[
                      TextSpan(
                          text:"\nAimer c'est partager",
                          style: TextStyle(
                            fontSize: 12,
                          )
                      )
                    ]
                )),

            Container(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 290,
                        height: 45,
                        child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Adresse mail ou nom d'utilisateur",
                                hintStyle: TextStyle(color:Colors.white,fontSize: 12),
                                filled:true,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                                fillColor: Color(0xff1c4969)
                            )
                        )
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 290,
                        height: 45,
                        child: TextField(
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Mot de passe",
                                hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                filled:true,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                                fillColor: Color(0xff1c4969)
                            )
                        )
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 270,
                        child: GestureDetector(
                          onTap: () => {
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => forgetPwd()),
                            )
                          },
                          child: Text("Mot de passe oublié ?",style: TextStyle(color: Colors.white,fontSize: 15),),
                        )
                    ),
                    SizedBox(
                      height:50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const feed()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffFD5F00),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          child:Text("SE CONNECTER",style:TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(textAlign:TextAlign.center,text: TextSpan(
                            text: "Vous n'avez pas de compte ?",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                            children:<TextSpan>[
                              TextSpan(
                                  text: "\nInscrivez-vous",
                                  recognizer: new TapGestureRecognizer()..onTap = (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) => signUP()),
                                    );
                                  },
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: Color(0xffFD5F00)
                                  )
                              )
                            ]
                        )),
                      ],
                    )
                  ],
                )
            ),

          ],
        )
    );
  }
}



