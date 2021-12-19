import 'package:flutter/material.dart';
import 'package:newtotolist/PasswordChangedSuccessfully.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'avenir'),
      home: resetPassword(),
    );
  }
}

class resetPassword extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Сбросить пароль",
              style: TextStyle(fontSize: 35),
            ),
            Text(
              "Код был отправлен на указанный вами e-mail",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Код",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "****"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Пароль",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Установите новый пароль"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Подтверждение",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: "Подтвердите новый пароль здесь"),
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: Center(
                child: InkWell(
                  onTap: openSuccessPage,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Color(0xfff96060)),
                    child: Text(
                      "Сменить пароль",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openSuccessPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PasswordChangedSuccessfully()));
  }
}
