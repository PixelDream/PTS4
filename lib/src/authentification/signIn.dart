import 'package:ferry/ferry.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import './forgetPwd.dart';
import '../../graphql/sign_in.req.gql.dart';
import '../../layout.dart';
import 'signUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SignInState();
  }
}

class SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final _emailField = TextEditingController();
  final _passwordField = TextEditingController();

  late bool _isLoading, _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    const storage = FlutterSecureStorage();
    final client = GetIt.I<Client>();

    void _signIn() async {
      setState(() {
        _isLoading = true;
      });

      final createReviewReq = GSignInReq(
        (b) => b
          ..vars.email = _emailField.text
          ..vars.password = _passwordField.text,
      );

      final result = await client.request(createReviewReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);

      if (!result.hasErrors) {
        if (result.data?.signIn.token != null) {
          await storage.write(key: "jwt", value: result.data?.signIn.token);

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Layout()),
          );

          return;
        }
      }

      print("Error -------------------");
      print(result.linkException?.originalException);
      result.graphqlErrors?.forEach((element) {
        print(element.message);
      });

      setState(() {
        _isLoading = false;
      });
    }

    return Scaffold(
        backgroundColor: const Color(0xff13334C),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/Topbackground.png'),
              RichText(
                  text: const TextSpan(
                      text: "MUSIC PARTY",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 45,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                        text: "\nAimer c'est partager",
                        style: TextStyle(
                          fontSize: 12,
                        ))
                  ])),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: 290,
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some email';
                              }

                              return null;
                            },
                            controller: _emailField,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Adresse mail ou nom d'utilisateur",
                              hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                              fillColor: const Color(0xff1c4969),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                              isDense: true,
                            ))),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: 290,
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some password';
                              }

                              return null;
                            },
                            controller: _passwordField,
                            obscureText: !_passwordVisible,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "Mot de passe",
                              hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                              filled: true,
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                              fillColor: const Color(0xff1c4969),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                              isDense: true,
                              suffixIconConstraints: BoxConstraints.loose(Size(50, 15)),
                              suffixIcon: IconButton(
                                splashRadius: 1,
                                icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  _passwordVisible ? Icons.visibility_off : Icons.visibility,
                                  color: Color(0xffFD5F00),
                                ),
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                            ))),
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 260,
                        child: GestureDetector(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ForgetPwd()),
                            )
                          },
                          child: const Text(
                            "Mot de passe oublié ?",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate() && !_isLoading) _signIn();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffFD5F00),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                          child: !_isLoading
                              ? const Text("SE CONNECTER", style: TextStyle(color: Colors.white))
                              : const Text("Chargement...", style: TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "Vous n'avez pas de compte ?",
                                style: const TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "\nInscrivez-vous",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const SignUP()),
                                          );
                                        },
                                      style: const TextStyle(fontStyle: FontStyle.italic, color: Color(0xffFD5F00)))
                                ])),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    _emailField.dispose();
    super.dispose();
  }
}
