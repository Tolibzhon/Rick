import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/feature/characters/data/models/person_model.dart';
import 'package:rick/routes/mobile_auto_router.gr.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';

class WidgetPerson extends StatelessWidget {
  const WidgetPerson({
    super.key,
    required this.model,
  });

  final PersonResult model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(PersonDetaileRoute(modal: model));
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 37,
            backgroundImage: NetworkImage(model.image),
          ),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.status,
                style: AppTextStyles.s12W500(
                  color: model.status == 'Alive'
                      ? AppColors.color43D049Green
                      : model.status == 'Dead'
                          ? AppColors.colorEB5757Red
                          : AppColors.lightGrey,
                ),
              ),
              Text(
                model.name,
                style: AppTextStyles.s16W500(color: AppColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                model.gender,
                style: AppTextStyles.s12W400(color: AppColors.lightGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
