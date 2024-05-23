import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ordering extends StatefulWidget {
  const Ordering({super.key});

  @override
  State<Ordering> createState() => _OrderingState();
}

class _OrderingState extends State<Ordering> {
  
  @override
  Widget build(BuildContext context) {
    
    final currentWidth = MediaQuery.of(context).size.width-21.42;
    final currenheight = MediaQuery.of(context).size.height+160.58;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 84, 100, 1),
        leading: IconButton(
          onPressed: (){}, 
          icon: Padding(
            padding: const EdgeInsets.fromLTRB(8,8,0,0),
            child: const Icon(Icons.filter_list,color: Colors.white,size: 24,),
          ),),
        
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical:10 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
            _Cards(),
            _Cards(),

           
            Padding(
                padding: const EdgeInsets.fromLTRB(0,402.3,0,0),
                child: Container(
                  height: 53,
                  width: 283,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(35, 84, 100, 1),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: TextButton(
                  onPressed: (){},
                  child: Text("Confirm", style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),))
                  ),
                ),
              )
          ],),
        ),
      ),


    );
  }

  Card _Cards(){
    return Card(
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),

      child: Container(
        height: 151,
        width: 376,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10 ,vertical: 10),
          child: Image.asset("assets/addPic.png", scale: 2,),
        ),
        Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5,9.6,0,0),
            child: Container(
              height: 35.89,
              width: 203.43,
              
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.circular(11),
                boxShadow: [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  spreadRadius: 0,
                  blurRadius: 25,
                  offset: Offset(0, 1),
                )]
              ),
              child: TextButton(
                onPressed: (){}, 
                child: Text("Category", style: GoogleFonts.inter(textStyle: TextStyle(color: Color.fromRGBO(63, 61, 61, 1), fontSize: 14,fontWeight: FontWeight.w500)) ,)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5,9.6,0,0),
            child: Container(
              height: 35.89,
              width: 203.43,
              
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.circular(11),
                boxShadow: [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  spreadRadius: 0,
                  blurRadius: 25,
                  offset: Offset(0, 1),
                )]
              ),
              child: TextButton(
                onPressed: (){}, 
                child: Text("Product", style: GoogleFonts.inter(textStyle: TextStyle(color: Color.fromRGBO(63, 61, 61, 1), fontSize: 14,fontWeight: FontWeight.w500)) ,)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5,9.6,0,0),
            child: Container(
              height: 35.89,
              width: 203.43,
              
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 246, 246, 1),
                borderRadius: BorderRadius.circular(11),
                boxShadow: [BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  spreadRadius: 0,
                  blurRadius: 25,
                  offset: Offset(0, 1),
                )]
              ),
              child: TextButton(
                onPressed: (){}, 
                child: Text("Price", style: GoogleFonts.inter(textStyle: TextStyle(color: Color.fromRGBO(63, 61, 61, 1), fontSize: 14,fontWeight: FontWeight.w500)) ,)),
            ),
          ),
        ],)
      ],),
      )

    );
  }

}