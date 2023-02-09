import 'package:flutter/material.dart';

class register extends StatefulWidget {


  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
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
              Text('Register',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  label: Text('Name'),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),



                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(
                height: 15.0,
              ),TextField(
                decoration: InputDecoration(
                  label: Text('Email'),
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(),



                ),
                keyboardType: TextInputType.emailAddress,
              )
              ,SizedBox(
                height: 15.0,
              ),
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
              ),
              TextField(
                decoration: InputDecoration(
                  label: Text('Phone'),
                  prefixIcon: Icon(Icons.phone),

                  border: OutlineInputBorder(),


                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isVisiable,
              ),
              SizedBox(
                height: 15.0,
              ),

              ElevatedButton(onPressed: (){}, child: Text('Register'),style:
                  ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50)
                  )
              ),








            ],
          ),
        ),
      ),
    );
  }
}
