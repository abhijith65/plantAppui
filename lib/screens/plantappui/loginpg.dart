import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutterfeb/screens/plantappui/signuppg.dart';

import 'listview1.dart';




class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage('https://images.unsplash.com/photo-1491147334573-44cbb4602074?q=80&w=1287&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150),)
              ),
              height: MediaQuery.of(context).size.height*.28,
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text('Welcome back',style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text('Login to your account',style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 15,),
                  TextFormField(
                    decoration:InputDecoration(
                        filled: true,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Full name'
                    ) ,),
                  SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      border:InputBorder.none ,
                      prefixIcon: Icon(Icons.lock),
                      labelText: '**********',
                    ),),

                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text('Forgot Password?')),
                  SizedBox(height: MediaQuery.of(context).size.height*.25,),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width*.9,
                    child: Text('Login'),
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (contex)=>Listview1()));},
                    color: Colors.green,),
                  SizedBox(height: 15,),
                  RichText(text: TextSpan(text: 'Don\'t have an account?',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(text: 'SignUp',
                            recognizer: TapGestureRecognizer()..onTap=(){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Signup()));
                            },
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.black54))
                      ]))
                ],
              ),
            )
          ],
        ),
      ),

    );
  }

}