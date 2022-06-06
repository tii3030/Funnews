import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:funnews/controler/login.dart';
import 'package:funnews/pages/home/home_page.dart';
import 'package:funnews/pages/passReset/passReset.dart';
import 'package:funnews/pages/signup/signup_page.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../colors/colors.dart';
import '../../images/images.dart';
import '../../controler/login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
    final myControllerPass = TextEditingController();
    bool isVisiblePass = false;
    bool isClick = false;
    bool isLogin = false;
    String error = '';

    @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      myController.dispose();
      myControllerPass.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset : false,      
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

                  Container (
                    child: isLogin ?
                    Text(error, 
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

                    child: 

                    TextFormField(
                      //CONTROLER PASSWORD
                      controller: myControllerPass,
                      obscureText: !isVisiblePass ? true : false,
                      cursorColor: const Color(0xff1393aa),

                      decoration: InputDecoration(
                        icon: const Icon(
                          Icons.vpn_key,
                          color: AppColors.primary,
                        ),

                        suffixIcon: IconButton(
                          icon: Icon(
                            isVisiblePass
                              ? Icons.visibility
                              : Icons.visibility_off,
                              color: AppColors.primary,
                          ),

                            onPressed: () {
                            setState(() {
                                isVisiblePass = !isVisiblePass;
                            });
                          },
                        ),

                        hintText: "Senha",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PassReset()),
                        );
                      },
                      child: const Text("Esqueceu sua senha?"),
                    ),
                  ),

                  GestureDetector(

                    onTap: () async {

                      setState(() {
                        isClick = !isClick;
                      });

                      if((myController.text).isEmpty || (myControllerPass.text).isEmpty){
                        setState(() {
                          error = 'Preencha todos os campos';
                          isLogin = !isLogin;
                        });

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const HomePage()),
                        // );

                      } else {
                        LoginController login = LoginController(myController.text, myControllerPass.text);
                        await login.loginUser() ?

                        Navigator.pushAndRemoveUntil(
                          context,   
                          MaterialPageRoute(builder: (BuildContext context) => const HomePage()), 
                          ModalRoute.withName('login')
                        )
                        :
                        setState(() {
                          error = 'Email ou senha inválidos';
                          isLogin = !isLogin;
                        });
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
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
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
                          "LOGIN",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Ainda nao tem uma conta? "),
                        GestureDetector(
                          child: const Text(
                            "Registre Aqui",
                            style: TextStyle(color: AppColors.primary),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignUp()),
                            );
                          },
                        )
                      ],
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
