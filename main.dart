import 'package:flutter/material.dart';
import 'Second_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: BoxDecoration(
                  color: Color(0xFF192841),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "  Sign in to your ",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  Account",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "   sign in to your account",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white24),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: isObscure,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure; // Toggle password visibility
                        });
                      },
                      icon: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Colors.lightGreen,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: double.infinity,
                        color: Colors.black12,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10), // Adds space around text
                        child: Text(
                          "Or login With",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 70,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black26),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 30,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/281/281764.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                          Text(
                            "Google",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 60,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black26),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 25,),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Image.network(
                              "https://cdn-icons-png.flaticon.com/128/2504/2504903.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                          Text(
                            "Facebook",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",style: TextStyle(fontSize: 20,),),
                  TextButton(onPressed: (){
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Secondscreen()));
                    });
                  }, child: Text("Register",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.lightGreen),))
                ],
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
