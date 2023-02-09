import 'package:flutter/material.dart';
import 'package:online_first_task/register.dart';

class logIn extends StatefulWidget {


  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  var isVisiable= false;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Login',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  label: Text('Email'),
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(),



                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  label: Text('password'),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(isVisiable?Icons.visibility_off:Icons.visibility), onPressed: () {
                      setState(() {
                        isVisiable=!isVisiable;

                      });
                  },),
                  border: OutlineInputBorder(),


                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isVisiable,
              ),
              SizedBox(
                height: 15.0,
              ), ElevatedButton(onPressed: (){}, child: Text('Login'),style:
              ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50)
              )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("don't have an account?"),
                  TextButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));}, child: Text('Register')),

                ],
              ),








            ],
          ),
        ),
      ),
    );
  }
}
