// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:funnews/pages/login/login_page.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../colors/colors.dart';
import '../../images/images.dart';
import '../../controler/passReset.dart';

class PassReset extends StatelessWidget {
  const PassReset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> with TickerProviderStateMixin {

  final myController = TextEditingController();

  bool isClick = false;
  bool isSend = false;
  String alert = '';

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  bool emailValidator(String email) {
    bool emailValid = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(email);
    return emailValid;
  }

  void popUp(BuildContext context) {

    showDialog<String>(
      //barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => 
      Center(
        child: 
        Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: Constants.padding,top: Constants.avatarRadius
                + Constants.padding, right: Constants.padding,bottom: Constants.padding
              ),

              margin: const EdgeInsets.only(top: Constants.avatarRadius, left: 20, right: 20),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(Constants.padding),
                boxShadow: const [
                  BoxShadow(color: Colors.black,offset: Offset(0,10),
                  blurRadius: 100
                  ),
                ]
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,

                    child:
                    const Text(
                      "Se o email informado estiver cadastrado, você receberá as instruções para redefinir sua senha.",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        decoration: TextDecoration.none,
                        color: Colors.black45,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),

                  GestureDetector(

                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },

                    child:

                    Center(
                      
                      child: 

                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            (AppColors.primary),
                            (AppColors.primary)
                          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0x00000000)
                            )
                          ],
                        ),

                        child: const Text(
                          "Fechar",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                        ),
                      ),
                    ) 
                  ),
                ],
              ),
            ),

            Positioned(
              left: Constants.padding,
                right: Constants.padding,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: Constants.avatarRadius,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(Constants.avatarRadius)),
                      child: AppImages.accept
                  ),
                ),
            ),
          ],
        ),
      )
    );
    
    // .then((val){
    //   Modular.to.navigate('/');
    // });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [

            //HEADER AND LOGO
            Container(
              height: 260,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                ),

                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0.1),
                      blurRadius: 10,
                      color: Color(0xFF000000)),
                ],

                color: AppColors.primary,
                gradient: LinearGradient(
                  colors: [(AppColors.primary), (AppColors.secondary)],
                ),
              ),

              child: 
              Center(
                child:
                SizedBox(
                  height: 400,
                  child: (AppImages.logo),
                )
              ),
            ),

            Expanded(

              child: 
              Column(

                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: 
                    const Text("Recuperação de Senha", 
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,                      
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 0, bottom: 20, left: 20, right: 20),
                    child:
                    const Text("Para recuperar a sua senha, informe seu endereço de email que nós enviaremos um link para a alteração.", 
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                        fontSize: 14
                      ),
                    ),
                  ),

                  Container (
                    child: isSend ?
                    Text(alert, 
                      style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
                    ): null,
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    height: 54,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300],

                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)),
                      ]
                    ),

                    child: TextFormField(

                      //CONTROLER EMAIL
                      controller: myController,
                      cursorColor: const Color(0xff1393aa),

                      decoration: const InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: AppColors.primary,
                        ),

                        hintText: "E-mail",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none
                      ),
                    ),
                  ),

                  GestureDetector(

                    onTap: () async {
                      setState(() {
                        isClick = !isClick;
                      });
                      
                      if((myController.text).isEmpty) {
                        setState(() {
                          isSend = true;
                          alert = 'Email inválido';
                        });
                      }

                      if((myController.text).isNotEmpty){
                        if(!emailValidator(myController.text)) {
                          setState(() {
                            isSend = true;
                            alert = 'Email inválido';
                          });
                        } else {
                          bool isSent = false;
                          ResetPassController resetPass = ResetPassController(myController.text);
                          isSent = await resetPass.resetPass();

                          isSent ?
                          popUp(context) : null;                      
                        }
                      }
                      setState(() {
                        isClick = !isClick;
                      });
                    },

                    child:    

                    Shimmer(
                      duration: const Duration(seconds: 1),
                      interval: const Duration(milliseconds: 100),
                      color: Colors.white,
                      colorOpacity: 0.3,
                      enabled: isClick ? true : false,
                      direction: const ShimmerDirection.fromLTRB(),

                      child:               
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 25),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        height: 54,

                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            (AppColors.primary),
                            (AppColors.primary)
                          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                          
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[300],

                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 50,
                              color: Color(0xffEEEEEE)
                            )
                          ],
                        ),

                        child: const Text(
                          "ENVIAR",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}

class Constants{
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;
}