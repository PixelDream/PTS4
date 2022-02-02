import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new forgetPwd());
  }
}

class forgetPwd extends StatelessWidget {
  const forgetPwd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
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
                        Text ("Mot de passe oublié ?", style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        SizedBox(
                          height:70,
                        ),
                        Text("Veuillez saisir votre adresse mail",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 12),),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40
                      ),
                      child: Column(
                        children:  [
                          Container(
                            height: 45,
                            width:290,
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
                            height: 40,
                          ),
                          Column(
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
                                child:Text("RECHERCHER",style:TextStyle(color: Colors.white)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
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



