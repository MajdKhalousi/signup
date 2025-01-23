/*import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/authentication/controllers/signup_controller.dart';
import 'constants/colors.dart';
import 'constants/text_strings.dart';


class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = ThelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
                () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged: (value) =>
              controller.privacyPolicy.value = !controller.privacyPolicy.value,
            ),
          ),
        ),
        //. const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${TTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary,
                ),
              ),
              TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? TColors.white : TColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? TColors.white : TColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );


  }
}


*/