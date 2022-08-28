import 'package:flutter/material.dart';

import '../utils/textstyle.dart';
class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(child: Scaffold(
        body:Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(
                  height: 200,
                ),
                const Center(
                  child: Tstyle(
                    text: 'Forgot Password',
                    size: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
               const Padding(
                  padding:EdgeInsets.all(8.0),
                  child: Tstyle(
                    text: 'Email',
                    size: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0XFFEFF3F6),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(6, 2),
                            blurRadius: 6.0,
                            spreadRadius: 3.0,
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            offset: Offset(-6, -2),
                            blurRadius: 6.0,
                            spreadRadius: 3.0,
                          ),
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Email',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ),
               const SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.yellow),
                    onPressed: (){}, child:const Text('Send Email',style: TextStyle(color: Colors.black54,fontSize: 20),)),
                )
        ]) ,
      )),
    );
  }
}