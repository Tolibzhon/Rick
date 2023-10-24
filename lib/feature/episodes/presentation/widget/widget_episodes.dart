import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/feature/episodes/data/models/episodes_model.dart';
import 'package:rick/routes/mobile_auto_router.gr.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';

class WidgetEpisodes extends StatelessWidget {
  const WidgetEpisodes({super.key, required this.modal});
  final EpisodesResult modal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(EpisodesDetaileRoute(modal: modal));
      },
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: NetworkImage(
                    'https://static.tvtropes.org/pmwiki/pub/images/abcb6534_7913_4eb1_a7a5_62b081ebc628.png',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 18),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  modal.episode,
                  style: AppTextStyles.s12W500(color: AppColors.colorLightBlue),
                ),
                Text(
                  modal.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.s16W500(color: AppColors.white),
                ),
                Text(
                  modal.airDate,
                  style: AppTextStyles.s14W400(color: AppColors.lightGrey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
