

import 'package:flutter/material.dart';

void main(){
  runApp(loginPage());
}
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
            key: formKey,
            child: Stack(
              children: [
                Container(
                  color: Colors.blue[300]
                ),
                SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Text("Login",
                          style: TextStyle(
                              fontSize: 40,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CircleAvatar(
                          radius: 70.0,
                          child: ClipRRect(
                            child: Image.asset('images/bhavesh.jpg'),
                            borderRadius: BorderRadius.circular(90.0),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          validator: (value){
                            print('${value}');
                            if(value!.length != 10){
                              return 'Kutrya-Dekh ke type kar';
                            }
                            else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Number',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          validator: (value){
                            print('${value}');
                            if(value!.length != 10){
                              return 'Kutrya-Dekh ke type kar';
                            }
                            else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Number',
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          onPressed: (){
                            if(formKey.currentState!.validate()){
                              print('Beta Moj kardi');
                            }
                            else {
                              print('Kutrya-Dekh ke type kar');
                            }
                          },
                          child: Text('Submit'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      );
  }
}
