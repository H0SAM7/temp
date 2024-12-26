import 'package:broker/core/utils/assets.dart';
import 'package:broker/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static String id = 'OnboardingView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.imagesBackground,
            fit: BoxFit.fill,
          ),
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text('Welcome \n select who you are'),
                    // ),
                    
                    CustomButton(
                      title: 'Broker',
                    ),
                    CustomButton(
                      title: 'Owner',
                    ),
                    CustomButton(
                      title: 'Guest',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
