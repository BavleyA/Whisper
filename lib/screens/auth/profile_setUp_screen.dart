import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whisper_app/screens/auth/login_screen.dart';
import 'package:whisper_app/widgets/custom_text_field.dart';
import 'package:whisper_app/widgets/logo.dart';

class ProfileSetUpScreen extends StatefulWidget {
  const ProfileSetUpScreen({super.key});

  @override
  State<ProfileSetUpScreen> createState() => _ProfileSetUpScreenState();
}

class _ProfileSetUpScreenState extends State<ProfileSetUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (route)=> false);
          }, icon: const Icon(Iconsax.logout)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Text("Welcome , ",
                  style: Theme.of(context).textTheme.headlineLarge
              ),
              const SizedBox(height: 5),
              Text("Let's Set Up Your Profile",
                  style: Theme.of(context).textTheme.bodyLarge
              ),
              const SizedBox(height: 20,),
              CustomTextField(
                label: "Enter Your Name",
                iconData: Iconsax.user,
                controller: emailController,),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {

                },
                child: Text("Continue".toUpperCase(),
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
            ],
          ),
        ),
      ),
    );
  }
}
