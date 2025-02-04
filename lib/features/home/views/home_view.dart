import 'package:broker/core/styles/text_styles.dart';
import 'package:broker/core/utils/assets.dart';
import 'package:broker/core/utils/colors.dart';
import 'package:broker/core/widgets/title_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TitleHeader(),
            Divider(
              thickness: .5,
            ),
            Expanded(child: FirstView()),
          ],
        ),
      ),
    );
  }
}

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            Assets.imagesBackground,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                // topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Text(
              'Own your \n Home',
              style: AppStyles.style24(context),
            ),
          ),
        ),
        Center(child: SearchView())
      ],
    );
  }
}

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: whiteColor,
      ),
      child: Column(
        children: [
          CustomListTile(
            title: 'Place',
            subtitle: 'Chose your place',
            image: Assets.iconsLocation,
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Image.asset(image),
     
    );
  }
}
