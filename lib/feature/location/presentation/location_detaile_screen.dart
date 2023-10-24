import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/widgets/spaces.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';

@RoutePage()
class LocationDetaileScreen extends StatelessWidget {
  const LocationDetaileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 250,
            width: getWidth(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://static.wikia.nocookie.net/rickandmorty/images/f/fc/S2e5_Earth.png/revision/latest?cb=20160926065208',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const SafeArea(
              child: BackButton(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Text(
                  'Земля C-137',
                  style: AppTextStyles.s24W600(color: AppColors.white),
                ),
                Text(
                  'Мир Измерение С-137',
                  style: AppTextStyles.s12W400(color: AppColors.lightGrey),
                ),
                const SizedBox(height: 30),
                Text(
                  'Это планета, на которой проживает человеческая раса, и главное место для персонажей Рика и Морти. Возраст этой Земли более 4,6 миллиардов лет, и она является четвертой планетой от своей звезды.',
                  style: AppTextStyles.s13W400(color: Colors.white),
                ),
                const SizedBox(height: 30),
                Text(
                  'Персонажи',
                  style: AppTextStyles.s20W500(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
