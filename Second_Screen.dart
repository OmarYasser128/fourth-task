import 'package:flutter/material.dart';
import 'package:taskkkk/main.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  bool isObscure = true;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
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
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 40,
                          )),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "  Register ",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "    Create your account",
                          style: TextStyle(color: Colors.white60, fontSize: 20),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this field is required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter your full name",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                    labelText: "FullName",
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this field is required";
                    }
                    return null;
                  },
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this field is required";
                    }
                    return null;
                  },
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "this field is required";
                    }
                    return null;
                  },
                  obscureText: isObscure,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter again your Password",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20),
                    labelText: "Repeat Password",
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
              SizedBox(
                height: 40,
              ),
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
                    child: InkWell(
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          print("Email: ${nameController.text}");
                          print("Password: ${passwordController.text}");
                          print(
                              "repeated password : ${repeatPasswordController.text}");
                        }
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you have an account?",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                        });
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
