import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/feature/episodes/data/models/episodes_model.dart';
import 'package:rick/widgets/spaces.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';

@RoutePage()
class EpisodesDetaileScreen extends StatelessWidget {
  const EpisodesDetaileScreen({super.key, required this.modal});
  final EpisodesResult modal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                height: 250,
                width: getWidth(context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://e0.pxfuel.com/wallpapers/278/668/desktop-wallpaper-rick-and-morty-mushroom-world-artwork.jpg',
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
                    const SizedBox(height: 80),
                    Center(
                      child: Text(
                        modal.name,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.s24W600(color: AppColors.white),
                      ),
                    ),
                    Center(
                      child: Text(
                        modal.episode,
                        style: AppTextStyles.s12W500(
                            color: AppColors.colorLightBlue),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет изготовления концен-трирован- ной темной материи.',
                      style: AppTextStyles.s13W400(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Премьера',
                      style: AppTextStyles.s12W400(color: AppColors.lightGrey),
                    ),
                    Text(
                      modal.airDate,
                      style: AppTextStyles.s14W400(color: AppColors.white),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Персонажи',
                      style: AppTextStyles.s20W500(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          const Positioned(
            top: 190,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.colorLightBlue,
              child: Icon(
                Icons.play_arrow,
                size: 60,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
