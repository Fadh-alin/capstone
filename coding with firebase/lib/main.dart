import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/committee_login.dart';
import 'package:myapp/user_login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: SecondPage(),
  ));
}

//void main() async => runApp(MaterialApp(
//    home: SecondPage(),
//  ));

//Page 1
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image(
                image: NetworkImage('https://lh3.googleusercontent.com/-deX0yacqrBA/Ya9iCAwVbYI/AAAAAAAAQtM/BZXna5BVIeQt_5CvxE9r40X4fh1YNUAKgCNcBGAsYHQ/Report.png')
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical:10, horizontal: 40),
              color: Colors.blueGrey,
              child: Text("USER", style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserLoginScreen()),
                );
              },
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical:10, horizontal: 40),
              color: Colors.blueGrey,
              child: Text("COMMITTEE", style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommitteeLoginScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


