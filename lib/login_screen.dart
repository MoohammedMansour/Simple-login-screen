import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  var emailController= TextEditingController();
  var passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(onPressed: (){},icon: Icon (
          Icons.arrow_back_sharp,
        )),
        title: Center(
          child: Text(
            'More Practise',style: TextStyle(
            fontSize: 20.0,
            fontWeight:FontWeight.bold,
          ),
          ),
        ),
        actions: [
          IconButton(onPressed: (){

          },
              icon: Icon (
            Icons.info,
          ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(

              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start ,
              children: [
                Text(
                    'Hi , Login Here ',
                  style:
                  TextStyle
                    (
                    fontSize: 45.0,
                    fontWeight:FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                // by normal it is double.infinity
                TextFormField (
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: ( String value)
                  {
                    print(value);
                  },
                  onChanged: (value){
                    print(value);
                  },
                  decoration:InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                        Icons.email,
                    ) ,
                    border:OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                // by normal it is double.infinity
                Container(

                  child: TextFormField (
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: ( String value)
                    {
                      print(value);
                    },
                    onChanged: (value){
                      print(value);
                    },
                    decoration:InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ) ,
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ) ,
                      border:OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  color:Colors.teal,

                  child: MaterialButton(
                      onPressed: (){
                        print(emailController.text);
                        print(passwordController.text);
                      },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color:Colors.white,
                      ),
                    ),

                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account ?'),
                    TextButton(onPressed: (){

                    },
                      child:Text(
                      'Register Now'
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
