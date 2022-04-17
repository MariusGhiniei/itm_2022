import 'package:flutter/material.dart';
import 'package:itm_2022_fb/AppSelectorPage/appSelectorPage.dart';
import 'package:form_validator/form_validator.dart';

class RegisterRoute extends StatefulWidget {
  const RegisterRoute({Key? key}) : super(key: key);

  @override
  _RegisterRouteState createState() => _RegisterRouteState();
}
class _RegisterRouteState extends State<RegisterRoute>{

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _validate(){
    _formKey.currentState!.validate();
  }
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
          body: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Column(
                children:<Widget>[
                  Padding(
                    padding:const EdgeInsets.only(top:60.0),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,

                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal:25),
                      child: TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty || value.length < 4) {
                            return 'Please enter at least 4 characters';
                          }
                          return null;
                        },

                        style: TextStyle(
                          fontSize: 11,
                        ),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Name: ',
                            hintText: 'Enter your name! '
                        ),
                      )
                  ),
                  SizedBox(height: 15),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal:25),
                      child: TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty || !value.contains('@')||value.length < 5) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontSize: 11,
                        ),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Email: ',
                            hintText: 'Enter valid email id as popescu@gmail.com! '
                        ),
                      )
                  ),
                  SizedBox(height: 15),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal:25),
                      child: TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty || value.length < 4) {
                            return 'Please enter at least 4 characters';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontSize: 11,
                        ),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Username: ',
                            hintText: 'Enter your username '
                        ),
                      )
                  ),
                  SizedBox(height: 15),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal:25),
                      child: TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty || value.length < 4) {
                            return 'Please enter at least 4 characters';
                          } else if(value == 'Russia' || value == 'russia') {
                            return 'You are from Russia! :( ';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontSize: 11,
                        ),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Country: ',
                            hintText: 'If you are from Russia you dont have access! '

                        ),
                      )
                  ),
                  SizedBox(height:15),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal:25),
                      child: TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty || value.length < 7) {
                            return 'Please enter at least 7 characters';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontSize: 11,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Password: ',
                            hintText: 'Choose a strong password '

                        ),
                      )
                  ),
                  SizedBox(height: 15),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal:25),
                      child: TextFormField(
                        validator: (value){
                          if(value == null || value.isEmpty || value.length < 4) {
                            return 'Please enter at least 4 characters';
                          }
                          return null;
                        },
                        style: TextStyle(
                          fontSize: 11,
                        ),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Platform',
                            hintText: 'iOS, Android, Windows, macOS, Linux '
                        ),
                      )
                  ),
                  SizedBox(height: 30),

                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color:Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: FlatButton(
                      onPressed: (){
                        //validation
                          Navigator.push(
                            context,
                              MaterialPageRoute(builder: (context)=>AppSelectorPageRoute())
                          );
                        },

                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
          ),
        ));
  }
}