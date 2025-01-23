
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../controllers/onboarding_controller.dart';
import '../../onboarding/on_boarding_dot_navigation.dart';
import '../../onboarding/on_boarding_next_button.dart';
import '../../onboarding/onboarding_skip.dart';
import '../../onboarding/onboarding_page.dart';



class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubtitle1,
              ), // Column
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubtitle2,
              ), // Column
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubtitle3,
              ), // Column
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(), // Positioned

          /// Dot Navigation SmoothPageIndicator

          const OnBoardingDotNavigation(),

          const OnBoardingNextButton(),





// PageView
        ],
      ),
    );
  }
}



