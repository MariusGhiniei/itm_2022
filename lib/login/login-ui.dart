import 'package:flutter/material.dart';

class LoginRoute extends StatelessWidget{
  const LoginRoute({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.purple, Colors.orange])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
            child: Column(
              children:<Widget>[
                Padding(
                  padding:const EdgeInsets.only(top:80.0),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal:25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email: ',
                        hintText: 'Enter valid email id as popescu@gmail.com'
                      ),
                    )
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border:UnderlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter your password! '
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //Implement email for password
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color:Colors.white70,
                      fontSize: 15
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color:Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                   child:
                   FlatButton(
                     onPressed: (){
                       //Go for dashboard apks
                       // Navigator.push(
                       //   context, MaterialPageRoute(builder: (_) => ProfileApksPage())
                       // ),
                     },
                     child: Text(
                       'Login',
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 20,
                       ),
                     ),
                   ),
                ),
                SizedBox(height: 50),
                Text('New User? Create Account')
              ]
            ),
       ),
    ));
  }
}