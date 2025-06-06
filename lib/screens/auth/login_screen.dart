import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whisper_app/screens/auth/forget_password_screen.dart';
import 'package:whisper_app/widgets/custom_text_field.dart';
import 'package:whisper_app/widgets/logo.dart';
import 'package:whisper_app/screens/auth/profile_setUp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: AppLogo(),
              ),
              const SizedBox(height: 25),
              Text("Welcome Back , ",
                  style: Theme.of(context).textTheme.headlineLarge
              ),
              const SizedBox(height: 5),
              Text("Login To Start Your Whispers",
                  style: Theme.of(context).textTheme.bodyLarge
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                label: "Email",
                iconData: Iconsax.direct,
              controller: emailController,),
              const SizedBox(height: 20,),
              CustomTextField(label: "Password",
                  iconData: Iconsax.password_check,
              controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ForgetPasswordScreen()));
                    },
                    child: const Text("Forgot Password?"),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login".toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.all(16.0),
                  minimumSize: const Size(double.infinity,60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              OutlinedButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) => ProfileSetUpScreen()),
                      (route) => false
                  );
                },
                child: Text('create account'.toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                ) ,
                ),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(16.0),
                  minimumSize: const Size(double.infinity,60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
