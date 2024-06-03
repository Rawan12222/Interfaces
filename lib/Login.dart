import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'EntryField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  _LoginPageState();

  final TextEditingController _controllerUseranme = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

    bool _isObscure = true;



  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width-21.42;
    final currenheight = MediaQuery.of(context).size.height+160.58;
    return Scaffold(

      backgroundColor: Color.fromRGBO(35, 84, 100, 1),

      body: SingleChildScrollView(child: Stack(children: [

        Container(
          height: 545,
          width: 390,
          child: Image.asset("assets/background.png")),

          Padding(
            padding: const EdgeInsets.fromLTRB(22,148,0,0),
            child: Dialog(
            
              elevation: 0,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
                
              ),
              child: Container(
                height: 591,
                width: 346,
                  ),
               ),

               
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(105, 172,0,0),
            child: Container(
                      height: 201,
                      width: 224,
                      child: Image.asset("assets/IC.png")),
          ),


          Padding(
                      padding: const EdgeInsets.fromLTRB(69.09,432.28,0,0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 8,
                            spreadRadius: 0,
                            offset: Offset(0, 1)
                          )]
                        ),
                        height: 59.85 ,
                        width: 295.82,
                        child: EntryField(
                        labeltext: "Username", 
                        myController: _controllerUseranme,
                        ),
                      ),
                    ),
          
          
                    Padding(
                      padding: const EdgeInsets.fromLTRB(69.09,520.98,0,0),
                      child: Container(
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 8,
                            spreadRadius: 0,
                            offset: Offset(0, 1)
                          )]
                        ),
                        
                        height: 59.85,
                        width: 295.82,
            
                        child: TextFormField(
                          obscureText: _isObscure,
                          controller: _controllerPassword,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                                      icon: Icon(_isObscure
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      }),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Password",
                              enabled: true,
                              focusedBorder: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(4),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(4),
                                  ),
                                ),
            
                                validator: (value) {
                                if (value!.length == 0) {
                                  return "Email cannot be empty";
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return ("Please enter a valid email");
                                } else {
                                  return null;
                                }
                              },
            
                          ),
                        ),
                        
                      ),
          
                      Padding(
                    padding: const EdgeInsets.fromLTRB(69.09,631.06,0,0),
                    child: Container(
                      height: 56.64,
                      width: 295.85,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(35, 84, 100, 1),
                        borderRadius: BorderRadius.circular(10),
                        
                      ),
                      child: TextButton(
                      onPressed: (){},
                      child: Text("Login", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),))
                      ),
                    ),
                  )

        
      
               
      
      ],
      ),)
      );
     
  }
}
