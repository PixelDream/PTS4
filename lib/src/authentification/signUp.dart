import 'package:ferry/ferry.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:socialnetwork/graphql/sign_up.req.gql.dart';

import '../../layout.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SignUPState();
  }
}

class SignUPState extends State<SignUP> {
  final _formKey = GlobalKey<FormState>();
  final _fistNameField = TextEditingController();
  final _lastNameField = TextEditingController();
  final _pseudoField = TextEditingController();
  final _emailField = TextEditingController();
  final _passwordField = TextEditingController();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    const storage = FlutterSecureStorage();
    final client = GetIt.I<Client>();

    void _signUp() async {
      setState(() {
        _isLoading = true;
      });

      final createReviewReq = GSignUpReq((b) => b
        ..vars.firstName = _fistNameField.text
        ..vars.lastName = _lastNameField.text
        ..vars.pseudo = _pseudoField.text
        ..vars.email = _emailField.text
        ..vars.password = _passwordField.text);

      final result = await client.request(createReviewReq).firstWhere((response) => response.dataSource != DataSource.Optimistic);

      if (!result.hasErrors) {
        if (result.data?.signUp.token != null) {
          await storage.write(key: "jwt", value: result.data?.signUp.token);

          Navigator.pop(context, true);
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
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff13334C),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: const Color(0xff13334C),
        bottom: PreferredSize(
            child: Container(
              color: Colors.white,
              height: 1.0,
            ),
            preferredSize: const Size.fromHeight(4.0)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Créer un compte",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some first name';
                                        }

                                        return null;
                                      },
                                      controller: _fistNameField,
                                      style: const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        hintText: "Prénom",
                                        hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                        filled: true,
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
                                        fillColor: const Color(0xff1c4969),
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                                        isDense: true,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some last name';
                                        }

                                        return null;
                                      },
                                      controller: _lastNameField,
                                      style: const TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        hintText: "Nom",
                                        hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                        filled: true,
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
                                        fillColor: const Color(0xff1c4969),
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                                        isDense: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  width: 310,
                                  child: TextFormField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some pseudo';
                                      }

                                      return null;
                                    },
                                    controller: _pseudoField,
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: "Nom d'utilisateur",
                                      hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                      filled: true,
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
                                      fillColor: const Color(0xff1c4969),
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                                      isDense: true,
                                    ),
                                  )),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                width: 310,
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
                                    hintText: "Adresse mail",
                                    hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                    filled: true,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
                                    fillColor: const Color(0xff1c4969),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                                    isDense: true,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                width: 310,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some password';
                                    }

                                    return null;
                                  },
                                  controller: _passwordField,
                                  obscureText: true,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    hintText: "Mot de passe",
                                    hintStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                    filled: true,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
                                    fillColor: const Color(0xff1c4969),
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                                    isDense: true,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate() && !_isLoading) _signUp();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xffFD5F00),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                child: !_isLoading
                                    ? const Text("CREER UN COMPTE", style: TextStyle(color: Colors.white))
                                    : const Text("Chargement...", style: TextStyle(color: Colors.white)),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      text: "Vous avez déja un compte ?",
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "\nVous connecter",
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Navigator.pop(context);
                                              },
                                            style: const TextStyle(fontStyle: FontStyle.italic, color: Color(0xffFD5F00)))
                                      ])),
                            ],
                          )
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
