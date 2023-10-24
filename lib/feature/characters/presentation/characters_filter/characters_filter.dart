import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';
import 'package:rick/widgets/custom_button.dart';

@RoutePage()
class CharacterFiltersScreen extends StatefulWidget {
  const CharacterFiltersScreen(
      {super.key, required this.gender, required this.status});
  final String gender;
  final String status;

  @override
  State<CharacterFiltersScreen> createState() => _CharacterFiltersScreenState();
}

class _CharacterFiltersScreenState extends State<CharacterFiltersScreen> {
  late String status = widget.status;
  late String gender = widget.gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackButton(
          color: AppColors.white,
        ),
        title: Text(
          'Фильтры',
          style: AppTextStyles.s20W500(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Статус',
              style: AppTextStyles.s12W500(color: AppColors.lightGrey),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    status = 'alive';
                    setState(() {});
                  },
                  child: Icon(
                    status == 'alive'
                        ? Icons.check_box
                        : Icons.check_box_outline_blank_outlined,
                    color: AppColors.lightGrey,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Живой',
                  style: AppTextStyles.s16W400(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    status = 'dead';
                    setState(() {});
                  },
                  child: Icon(
                    status == 'dead'
                        ? Icons.check_box
                        : Icons.check_box_outline_blank_outlined,
                    color: AppColors.lightGrey,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Мертвый',
                  style: AppTextStyles.s16W400(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    status = 'unknown';
                    setState(() {});
                  },
                  child: Icon(
                    status == 'unknown'
                        ? Icons.check_box
                        : Icons.check_box_outline_blank_outlined,
                    color: AppColors.lightGrey,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Неизвестно',
                  style: AppTextStyles.s16W400(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(color: AppColors.color0B1E2DBg2),
            const SizedBox(height: 30),
            Text(
              'Пол',
              style: AppTextStyles.s12W500(color: AppColors.lightGrey),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    gender = 'male';
                    setState(() {});
                  },
                  child: Icon(
                    gender == 'male'
                        ? Icons.check_box
                        : Icons.check_box_outline_blank_outlined,
                    color: AppColors.lightGrey,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Мужской',
                  style: AppTextStyles.s16W400(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    gender = 'female';
                    setState(() {});
                  },
                  child: Icon(
                    gender == 'female'
                        ? Icons.check_box
                        : Icons.check_box_outline_blank_outlined,
                    color: AppColors.lightGrey,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Женский',
                  style: AppTextStyles.s16W400(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    gender = 'unknown';
                    setState(() {});
                  },
                  child: Icon(
                    gender == 'unknown'
                        ? Icons.check_box
                        : Icons.check_box_outline_blank_outlined,
                    color: AppColors.lightGrey,
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  'Бесполый',
                  style: AppTextStyles.s16W400(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Найти',
              onPressed: () {
                Navigator.of(context).pop(
                  {
                    'gender': gender,
                    'status': status,
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
