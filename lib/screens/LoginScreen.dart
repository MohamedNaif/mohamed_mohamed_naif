import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'category_screen.dart';
import 'q-screen.dart';

TextEditingController userNameTextEditingControllrt = TextEditingController(); // global

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  // late String _password;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter ,
          children: [
            Container(
              // height: 400,
              width:  MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Positioned(
                      top: -40,
                      height: 400,
                      width: width,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'lib/assets/images/background.png'),
                                fit: BoxFit.fill)),
                      )),
                  Positioned(
                      height: 400,
                      width: width + 20,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'lib/assets/images/background-2.png'),
                                fit: BoxFit.fill)),
                      ))
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: userNameTextEditingControllrt,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your username';
                          }
                          if ( value[0] != value[0].toUpperCase()) {
                            return 'Username must start with an uppercase letter';
                          }
                          if (value.length < 10) {
                            return 'Username must be at least 10 characters long';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'New to Quiz?',
                              style: TextStyle(
                                color: Color.fromARGB(255, 196, 210, 222),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Register?',
                              style: TextStyle(
                                color: Color.fromARGB(255, 146, 30, 214),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {
                          if ( _formKey.currentState!.validate() ) {
                            
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  CategoryScreen()));
                            // TODO: Perform login logic
                          }
                        },
                        child: const Text('LOGIN'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 73, 12, 147),
                          minimumSize: Size(
                              MediaQuery.of(context).size.width * 0.45, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _rememberMe,
                                onChanged: (newValue) {
                                  setState(() {
                                    _rememberMe = newValue!;
                                  });
                                },
                              ),
                              const Text('Remember Me'),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Color.fromARGB(255, 148, 26, 193),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
