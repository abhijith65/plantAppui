
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



import 'listview1.dart';
import 'loginpg.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text('Register',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Text('create your new account',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    labelText: 'Fullname',
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  prefixIcon: Icon(Icons.mail),
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'password',
                  )),
              SizedBox(height: 15,),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'confirm password',
                  )),
              SizedBox(height: 15,),
              RichText(text: TextSpan(text: 'By signing in you agree to our ',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(text: 'term of use ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54)),
                    TextSpan(text: 'and ',style: TextStyle(color: Colors.grey)),
                    TextSpan(text: 'privacy policy',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54))
                  ])),
              SizedBox(height: MediaQuery.of(context).size.height*.22,),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width*.9,
                child: Text('Signup'),
                onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (contex)=>Listview1()));},
                color: Colors.green,),
              SizedBox(height: 15,),
              RichText(text: TextSpan(text: 'Already have an account?',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(text: 'Login',
                        recognizer: TapGestureRecognizer()..onTap=(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Login()));
                        },
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54))
                  ]))
            ],
          ),
        ),
      ),
    );
  }

}