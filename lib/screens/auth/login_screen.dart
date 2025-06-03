import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whisper_app/widgets/custom_text_field.dart';
import 'package:whisper_app/widgets/logo.dart';

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
              SizedBox(height: 25),
              Text("Welcome Back , ",
                  style: Theme.of(context).textTheme.headlineLarge
              ),
              SizedBox(height: 5),
              Text("Login To Start Your Whispers",
                  style: Theme.of(context).textTheme.bodyLarge
              ),
              SizedBox(height: 20,),
              CustomTextField(
                label: "Email",
                iconData: Iconsax.direct,
              controller: emailController,),
              SizedBox(height: 20,),
              CustomTextField(label: "Password",
                  iconData: Iconsax.password_check,
              controller: passwordController,
                isPassword: true,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
