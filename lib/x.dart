import 'package:aladdinslamp/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'features/authentication/controllers/signup_controller.dart';



class x extends StatelessWidget {
  //const TSignupForm({super.key});


  @override
  Widget build(BuildContext context) {

    final controller = Get.put(SignupController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          // First & Last Name Row
          Row(
            children: [
              Expanded(
                child: TextFormField(

                  controller: controller.firstName,
                  validator: (value) => TValidator.validateEmptyText('First name', value),



                  decoration: const InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),

                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: TextFormField(
                  validator: (value) => TValidator.validateEmptyText('Last name', value),

                  controller: controller.lastName,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Iconsax.user),
                  ),

                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),

          // Username
          /*TextFormField(
            controller: controller.username,
            validator: (value) => TValidator.validateEmptyText('Username', value),
            decoration: const InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Iconsax.user_edit),
            ),

          ),

           */
          //const SizedBox(height: 16.0),

          // Email
          /*TextFormField(
            controller: controller.email,
            //validator: (value) => TValidator.validateEmail(value),

            decoration: const InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Iconsax.direct),
            ),

          ),

           */
          //const SizedBox(height: 16.0),

          // Phone Number
          /*TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: "Phone Number",
              prefixIcon: Icon(Iconsax.call),
            ),

          ),

           */
          const SizedBox(height: 10.0),

          // Password
          /*Obx(() {
            var isPasswordHidden = true.obs;
            return TextFormField(
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: "Password",
                //.  labelText: TTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  icon: Icon(isPasswordHidden.value? Iconsax.eye_slash : Iconsax.eye),
                  onPressed: () {
                    controller.hidePassword.value = !controller.hidePassword.value;
                  },
                ),
              ),

            );
          }),

           */


          //const SizedBox(height: 24.0),

          // Terms and Conditions Checkbox
          //const TTermsAndConditionCheckbox(),

          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              const Text("I agree to the terms and conditions"),
            ],
          ),


          //const SizedBox(height: 24.0),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup()
              /*
              onPressed: () {


                if (controller.signupFormKey.currentState!.validate()) {
                  Get.to(() => const VerifyEmailScreen());
                }


              },

     */
              ,child: const Text("Create Account"),
            ),
          ),
        ],
      ),
    );
  }



}
/*
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Verify Email")),
      body: Center(child: const Text("Please verify your email.")),
    );
  }
}

 */
