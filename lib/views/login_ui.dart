import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app_iot3/views/new_account_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF424552),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 50.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        //color: Colors.yellow,
                        color: Color(0xFFE38D00),
                      ),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        //color: Colors.yellow,
                        color: Color(0xFF888888),
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xFF888888),
                      size: 40.0,
                    ),
                    hintText: 'ชื่อผู้ใช้',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        //color: Colors.yellow,
                        color: Color(0xFFE38D00),
                      ),
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        //color: Colors.yellow,
                        color: Color(0xFF888888),
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Color(0xFF888888),
                      size: 40.0,
                    ),
                    hintText: 'รหัสผ่าน',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Incorrect password',
                style: TextStyle(
                  color: Color(0xFFF65F94),
                ),
              ),
              const SizedBox(
                height: 80.0,
              ),
              ElevatedButton(
                onPressed: (){},
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100.0,
                    70.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      70.0,
                    ),
                  ),
                  primary: Colors.black,
                  elevation: 7.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'First time here? ' ,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return const NewAccountUI();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Sign up' ,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFCAFBFD),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
