import 'package:flutter/material.dart';
import 'signIn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/material_state.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new signUP());
  }
}


class signUP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:Color(0xff13334C),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Color(0xff13334C),
        bottom: PreferredSize(
            child: Container(
              color: Colors.white,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        leading:
        IconButton( onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.white,)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 50,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text ("Créer un compte", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        SizedBox(height: 20,),
                        SizedBox(height: 30,)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40
                      ),
                      child: Row(
                        children:  [
                          Container(
                            height: 45,
                            width:150,
                            child:TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Prenom",
                                  hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                  filled:true,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                                  fillColor: Color(0xff1c4969)
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width:150,
                            child:TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Nom",
                                  hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                  filled:true,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                                  fillColor: Color(0xff1c4969)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 45,
                            width:310,
                          child:TextField(
                            style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Nom d'utilisateur",
                                  hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                  filled:true,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                                  fillColor: Color(0xff1c4969)
                              ),
                          )
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height:45,
                          width: 310,
                          child:TextField(
                            style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Adresse mail",
                                  hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                  filled:true,
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                                  fillColor: Color(0xff1c4969)
                              ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 45,
                          width: 310,
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "Mot de passe",
                                hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                filled:true,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                                fillColor: Color(0xff1c4969)
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (){

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffFD5F00),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),

                          child:Text("CREER UN COMPTE",style:TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        RichText(textAlign:TextAlign.center,text: TextSpan(
                            text: "Vous avez déja un compte ?",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),
                            children:<TextSpan>[
                              TextSpan(
                                  text: "\nVous connecter",
                                  recognizer: new TapGestureRecognizer()..onTap = (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => signIn()),
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

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

