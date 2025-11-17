import 'package:flutter/material.dart';
import 'package:myecommerce_app/utills/validators.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final List<String> _gender = ["Male", "Female"];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
  TextEditingController confirmPWController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 12,
          children: [
            Text(
              "Create Your Account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

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

      // phone
      TextFormField(
        controller: phoneController,
        decoration: InputDecoration(
          labelText: "Phone",
          prefixIcon: Icon(Icons.phone_outlined),
        ),
        validator: FormValidator.validatePhone,
      ),

      // gender dropdown
      DropdownButtonFormField(
        decoration: InputDecoration(
          labelText: "Gender",
          prefixIcon: Icon(Icons.male),
        ),
        items: _gender.map((gender) {
          return DropdownMenuItem(
            value: gender,
            child: Text(gender),
          );
        }).toList(),
        onChanged: (value) {},
      ),

      // password
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: passowrdController,
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          labelText: "Password",
          prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
        validator: FormValidator.validatePassword,
      ),

      // confirm password
      TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: confirmPWController,
        obscureText: !_confirmPasswordVisible,
        decoration: InputDecoration(
          labelText: "Confirm Password",
          prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: Icon(
              _confirmPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _confirmPasswordVisible = !_confirmPasswordVisible;
              });
            },
          ),
        ),
        onChanged: (value) {
          setState(() {}); // LIVE VALIDATION
        },
        validator: (value) {
          return FormValidator.validateConfirmPassword(
            value,
            passowrdController.text,
          );
        },
      ),
    ],
  ),
),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("FORM IS VALID");
                  }
                },
                child: Text("Create Account"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
