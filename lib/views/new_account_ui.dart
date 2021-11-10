import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_iot3/views/login_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewAccountUI extends StatefulWidget {
  const NewAccountUI({Key? key}) : super(key: key);

  @override
  _NewAccountUIState createState() => _NewAccountUIState();
}

class _NewAccountUIState extends State<NewAccountUI> {
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
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'New\nAccount',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '1/2\nSTEPS',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        //color: Colors.yellow,
                        borderRadius: BorderRadius.circular(
                          100.0,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 5.0,
                        ),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.biohazard,
                        color: Colors.grey,
                        size: 40.0,
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    const Flexible(
                      child: Text(
                        'Upload a profile picture (Optional)',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Color(0xFFE38D00),
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
                    hintText: 'ชื่อ-สกุล',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                    ),
                    labelText: 'Name',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  right: 50.0,
                ),
                child: TextField(
                  style: const TextStyle(
                    color: Color(0xFFE38D00),
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
                    hintText: 'ชื่อผู้ใช้',
                    hintStyle: TextStyle(
                      color: Colors.grey[700],
                    ),
                    labelText: 'User',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Username already in use',
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
                  'Next',
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
                    'Not the first time here? ' ,
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
                            return const LoginUI();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Log in' ,
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
