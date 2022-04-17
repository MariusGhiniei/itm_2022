import 'package:flutter/material.dart';

class FeedbackRoute extends StatelessWidget{
  const FeedbackRoute({Key? key}) : super(key:key);

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
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                          border:UnderlineInputBorder(),
                          labelText: 'Feedback',
                          hintText: 'Send us your feedback about our app '
                      ),
                    ),
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
                          //Send feedback to databse
                          // Navigator.push(
                          //   context, MaterialPageRoute(builder: (_) => ProfileApksPage())
                          // ),
                        },

                          child: Text(
                          'Send Feedback',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color:Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  child: RawMaterialButton(
                    onPressed:(){
                      //
                    },

                  child: Text(
                    'Back to home',
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
        ));
  }
}