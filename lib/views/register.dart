import 'package:flutter/material.dart';
import 'package:myecommerce_app/utills/validators.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final List<String> _gender = ["Male", "Female"];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
  TextEditingController confirmPWController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(title: Text("Register")),

      //body5
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 12,
          children: [
            // heading
            Text(
              "Create Your Account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            // form
            Form(
              key: _formKey,
              child: Column(
                spacing: 12,
                children: [
                  // name
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person_2_outlined),
                    ),
                    validator: FormValidator.validateName,
                  ),

                  // email
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                    validator: FormValidator.validateEmail,
                  ),
                  //phone
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      labelText: "Phone",
                      prefixIcon: Icon(Icons.phone_outlined),
                    ),
                    validator: FormValidator.validatePhone,
                  ),
                  //gender
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: "Gender",
                      prefix: Icon(Icons.male),
                    ),
                    items: _gender.map((gender) {
                      return DropdownMenuItem(
                        value: gender,
                        child: Text(gender),
                      );
                    }).toList(),

                    onChanged: (value) {},
                  ),

                  //password
                  TextFormField(
                    controller: passowrdController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock_outlined),
                    ),
                    validator: FormValidator.validatePassword,
                  ),

                  //conirm password
                  TextFormField(
                    controller: confirmPWController,
                    decoration: InputDecoration(
                      labelText: "Conirm Password",
                      prefixIcon: Icon(Icons.lock_outlined),
                    ),
                    validator: (value) {
                      FormValidator.validateConfirmPassword(
                        confirmPWController.text,
                        passowrdController.text,
                      );
                    },
                  ),
                ],
              ),
            ),

            // register account button
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    //print("FORM IS VALID");
                    // signup process
                    
                  }
                },
                child: Text("Create Account"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
