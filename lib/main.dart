import 'package:flutter/material.dart';
import 'package:itm_2022_fb/login/login-ui.dart';
import 'package:itm_2022_fb/login/feedback-ui.dart';
import 'package:itm_2022_fb/login/register-ui.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'An App for Updates',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.orange])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.black38,
            title: const Text('An App for Updates'),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginRoute()),
                  );
                },
                child: Text(
                  'Login',
                   style: TextStyle(color:Colors.white)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: const EdgeInsets.fromLTRB(100,25,100,25),


                )
            ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterRoute()),
                  );
                },
                child: Text('Register',
                style: TextStyle( color: Colors.white)),
                style:ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: const EdgeInsets.fromLTRB(90,25,90,25),
                )
            ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FeedbackRoute()),
                  );
                },
                child:
                Text('Feedback!',
                style: TextStyle(color:Colors.white)),
                style:ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: const EdgeInsets.fromLTRB(83,25,83,25) ,
                )
              )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            'I hope you have a wonderful day! ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              wordSpacing: 5,
              fontSize: 24.0,
            ),
          ),
        ),
          ),
    );
  }
}