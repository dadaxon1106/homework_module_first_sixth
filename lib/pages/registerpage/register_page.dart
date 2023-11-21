import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixth_module_one_lesson/pages/homeworkpage/homework_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  static const String route = "/register";

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with TickerProviderStateMixin {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController confirmPassswordController = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Let's Get Started!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Create an account to Q to get Allure to get all features",
              style: TextStyle(color: Colors.grey.shade800, fontSize: 15),
            ),
            const SizedBox(
              height: 15,
            ),
            Form(
              key: _globalKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Jhone Williams",
                        hintStyle: const TextStyle(fontWeight: FontWeight.w500),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusColor: Colors.blue,
                        prefixIcon: const Icon(
                          CupertinoIcons.person,
                          // color: Colors.blue,
                          size: 25,
                        ),
                      ),
                      validator: (value) {
                        if (value!.length < 2) {
                          return "Enter correct name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(fontWeight: FontWeight.w500),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(
                              // color: Colors.blue,
                              ),
                        ),
                        focusColor: Colors.blue,
                        prefixIcon: const Icon(
                          Icons.email,
                          // color: Colors.blue,
                          size: 25,
                        ),
                      ),
                      validator: (value) {
                        final gmailRegex = RegExp(r"^(.+)@(\S+)$");
                        if (!gmailRegex.hasMatch(value!)) {
                          return "Enter correct email";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: phoneController,
                      decoration: InputDecoration(
                        hintText: "Phone",
                        hintStyle: const TextStyle(fontWeight: FontWeight.w500),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(
                              // color: Colors.blue,
                              ),
                        ),
                        focusColor: Colors.blue,
                        prefixIcon: const Icon(
                          CupertinoIcons.device_phone_portrait,
                          // color: Colors.blue,
                          size: 25,
                        ),
                      ),
                      validator: (value) {
                        if (value!.length < 10) {
                          return "Enter correct phone number";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: const TextStyle(fontWeight: FontWeight.w500),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(
                              // color: Colors.blue,
                              ),
                        ),
                        focusColor: Colors.blue,
                        prefixIcon: const Icon(
                          CupertinoIcons.lock,
                          // color: Colors.blue,
                          size: 25,
                        ),
                      ),
                      validator: (value) {
                        final symbolHas = RegExp("[!A-Za-z0-9]");
                        final upperLetter = RegExp("[A-Z]");
                        final numberHas = RegExp("[0-9]");
                        if (!symbolHas.hasMatch(value!)) {
                          return "Must be symbol";
                        }
                        if (!upperLetter.hasMatch(value)) {
                          return "Must be upperletter";
                        }
                        if (!numberHas.hasMatch(value)) {
                          return "Must be number";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      controller: confirmPassswordController,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: const TextStyle(fontWeight: FontWeight.w500),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: const BorderSide(
                              // color: Colors.blue,
                              ),
                        ),
                        focusColor: Colors.blue,
                        prefixIcon: const Icon(
                          CupertinoIcons.lock,
                          // color: Colors.blue,
                          size: 25,
                        ),
                      ),
                      validator: (value) {
                        if (passwordController.text != value) {
                          return "Confirm Password Error";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            CupertinoButton(
              child: Container(
                alignment: Alignment.center,
                width: 220,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "CREATE",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              onPressed: () {
                _globalKey.currentState!.validate();
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginPage.route);
                  },
                  child: Text(
                    "Login here",
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 18),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
