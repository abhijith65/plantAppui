import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/listview/home.dart';
import 'package:flutterfeb/screens/listview/listview2.dart';
import 'package:flutterfeb/screens/listview/listviewbuilder.dart';
import 'package:flutterfeb/screens/login.dart';
import 'package:flutterfeb/screens/splashpage.dart';
import 'package:google_fonts/google_fonts.dart';

class Signupm extends StatefulWidget {
  const Signupm({super.key});

  @override
  State<Signupm> createState() => _SignupmState();
}

class _SignupmState extends State<Signupm> {
  var pwdvisible =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      backgroundColor: Colors.black,
      

      body: Container(
        decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage('assets/images/black(bg.jpg'),
          fit: BoxFit.cover
        )),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
              SizedBox(height: 50,),
              Text('welcome', style: GoogleFonts.sahitya(fontSize: 40),),
              Text('create your account', style: GoogleFonts.sahitya(fontSize: 40),),
              SizedBox(height: 10,),


              TextField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  icon: Icon(Icons.high_quality),
                  border: OutlineInputBorder(),
                  labelText: 'username',
                  hintText: 'enter username'),

              ),
              SizedBox(height: 10),
              TextFormField(decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_pin),
                border: OutlineInputBorder(),
                labelText: 'email',
                hintText: 'enter email'
              ),),
              SizedBox(height: 10,),

              TextFormField(obscureText: pwdvisible,
                   validator: (password){if(password!.isEmpty || password!.length<4)
                     {return 'enter valid password';}
                      else{return null;}},
                   decoration: InputDecoration(
                  icon: Icon(Icons.high_quality),
                  suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(pwdvisible==true){pwdvisible=false;}
                        else{pwdvisible=true;}
                      });
                    },
                    icon:Icon(pwdvisible==true?Icons.visibility_off:Icons.visibility) ),
                  border: OutlineInputBorder(),
                  labelText: 'password',
                  hintText: 'enter password',
                  helperText: 'password must have atleast 4 letters')),


              SizedBox(height: 10,),
              TextFormField(decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'confirm password',
                hintText: 'reenter password'
              ),),
              RichText(text: TextSpan(text: 'already a user, ',
                  style: TextStyle(color: Colors.white12),
                  children: [
                    TextSpan(text: 'LogIn',
                        recognizer: TapGestureRecognizer()..onTap=(){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> loginm()));
                        },
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white12))
                  ])),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              MaterialButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Splashpage()));},
                  color: Colors.green,
              child: Text('signup'),),

            ],),
          ),
        ),
      ),
    );
  }
}
