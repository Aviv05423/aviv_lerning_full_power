import 'package:flutter/material.dart';

class logInPage extends StatefulWidget {
  const logInPage({Key? key}) : super(key: key);

  @override
  _logInPageState createState() => _logInPageState();
}

class _logInPageState extends State<logInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.anchor,
              size: 130
            ),
            SizedBox(height: 35,),


          //  שלומות לך

            Text("!שלום לך שוב",
            style: TextStyle(fontSize: 66 , fontFamily: "karantina-regular",)),
            SizedBox(height: 10,),
            Text("!ברוכ.ה הבא.ה, שמחים שחזרת אלינו",
            style: TextStyle( fontSize: 20),),
            SizedBox(height: 50,),
          //  שם משתמש אימייל
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    hintText: "מייל",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          //  סיסמה
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintTextDirection: TextDirection.rtl,
                      hintText: "סיסמה",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
          //  היכנס
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                  child: Text(
                      "!הכנס",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
            ),
          ),
            SizedBox(height: 25,),
          //  הרשמה
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("הירשמו עכשיו",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),),
                Text(" ?לא מכירים",
                  style: TextStyle(
                      // color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),),

              ],
            )
          ],),
        ),
      ),
    );
  }
}
