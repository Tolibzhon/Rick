import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/feature/characters/data/models/person_model.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';

@RoutePage()
class PersonDetaileScreen extends StatelessWidget {
  const PersonDetaileScreen({super.key, required this.modal});
  final PersonResult modal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButton(),
            const SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                backgroundColor: AppColors.lightGrey,
                radius: 80,
                child: CircleAvatar(
                  radius: 74,
                  backgroundImage: NetworkImage(modal.image),
                ),
              ),
            ),
            Center(
              child: Flexible(
                child: Text(
                  modal.name,
                  maxLines: 1,
                  style: AppTextStyles.s32W500(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Center(
              child: Text(
                modal.status,
                style: AppTextStyles.s12W500(
                  color: modal.status == 'Alive'
                      ? AppColors.color43D049Green
                      : modal.status == 'Dead'
                          ? AppColors.colorEB5757Red
                          : AppColors.lightGrey,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              modal.created,
              // 'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность и социопатия заставляют беспокоиться семью его дочери.',
              style: AppTextStyles.s13W400(color: Colors.white),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Пол',
                  style: AppTextStyles.s12W400(color: AppColors.lightGrey),
                ),
                const Spacer(),
                const SizedBox(width: 20),
                Text(
                  'Расса',
                  style: AppTextStyles.s12W400(color: AppColors.lightGrey),
                ),
                const Spacer(),
              ],
            ),
            Row(
              children: [
                Text(
                  modal.gender,
                  style: AppTextStyles.s14W400(color: AppColors.white),
                ),
                const Spacer(),
                Text(
                  modal.species,
                  style: AppTextStyles.s14W400(color: AppColors.white),
                ),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Место рождения',
              style: AppTextStyles.s12W400(color: AppColors.lightGrey),
            ),
            Row(
              children: [
                Text(
                  modal.origin.name,
                  style: AppTextStyles.s14W400(color: AppColors.white),
                ),
                const Spacer(),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Местоположение',
              style: AppTextStyles.s12W400(color: AppColors.lightGrey),
            ),
            Row(
              children: [
                Text(
                  modal.location.name,
                  style: AppTextStyles.s14W400(color: AppColors.white),
                ),
                const Spacer(),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(height: 30),
            const Divider(
              thickness: 0.5,
              color: AppColors.lightGrey,
            ),
          ],
        ),
      )),
    );
  }
}
