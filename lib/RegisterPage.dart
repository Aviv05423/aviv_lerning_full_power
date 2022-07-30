import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'common/myTextField.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;

  const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.anchor, size: 130),
                SizedBox(
                  height: 35,
                ),

                //  שלומות לך

                Text("!ברוכים הבאים לך",
                    style: TextStyle(
                      fontSize: 66,
                      fontFamily: "karantina-regular",
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "!הרשמו עכשיו לחווית אימון חדשה",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
                //  שם משתמש אימייל
                Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: myTextField("מייל", false, _emailController)
                  // TextField(
                  //   // obscureText: true,
                  //   decoration: InputDecoration(
                  //     fillColor: Colors.grey[200],
                  //     filled: true,
                  //     contentPadding: const EdgeInsets.symmetric(
                  //         vertical: 13, horizontal: 20),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderSide:
                  //           BorderSide(color: Colors.deepPurple, width: 1.0),
                  //       borderRadius: BorderRadius.circular(12),
                  //     ),
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.white, width: 1.0),
                  //       borderRadius: BorderRadius.circular(12),
                  //     ),
                  //     hintTextDirection: TextDirection.rtl,
                  //     hintText: 'מייל',
                  //   ),
                  // ),
                ),
                //  סיסמה
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: myTextField("סיסמה", true, _passwordController),
                ),
                SizedBox(
                  height: 10,
                ),
                //  היכנס
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: signUp,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                            "הרשמה",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                //  הרשמה
                GestureDetector(
                  onTap: widget.showLoginPage,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: widget.showLoginPage,
                        child: Text(
                          "לכניסה",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        " !אנחנו מכירים",
                        style: TextStyle(
                          // color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
