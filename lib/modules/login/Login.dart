import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

bool isPasswordShow=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                defaultTextFormField(
                    control: emailController,
                    text: "Email",
                    prefix: Icons.email,
                    type: TextInputType.text,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return "Email can't be empty";
                      }
                      return null;
                    },
                    onChange: (value) {
                      print(value);
                    },
                    onSubmit: (value) {
                      print(value);
                    }),
                const SizedBox(
                  height: 20,
                ),
                defaultTextFormField(
                  control: passwordController,
                  type: TextInputType.visiblePassword,
                  isPassword: isPasswordShow,
                  text: "Password",
                  prefix: Icons.lock,
                  suffix:isPasswordShow? Icons.visibility_off:Icons.visibility,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return "Password can't be empty";
                    }
                    return null;
                  },
                  suffixPressed: (){
                   setState(() {
                     isPasswordShow=!isPasswordShow;
                   });
                  }
                ),
                const SizedBox(
                  height: 20,
                ),
                defaultButton(
                  text: 'login',
                  function: () {
                    if (formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ? "),
                    TextButton(
                        onPressed: () {}, child: const Text("Register Now "))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
