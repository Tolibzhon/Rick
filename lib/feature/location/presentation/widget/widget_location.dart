import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/feature/location/data/models/location_model.dart';
import 'package:rick/routes/mobile_auto_router.gr.dart';
import 'package:rick/widgets/spaces.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';

class widgetLocation extends StatelessWidget {
  const widgetLocation({
    super.key,
    required this.model,
  });
  final LocationResult model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(const LocationDetaileRoute());
      },
      child: Container(
        height: 218,
        width: getWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            image: NetworkImage(
              'https://static.wikia.nocookie.net/rickandmorty/images/f/fc/S2e5_Earth.png/revision/latest?cb=20160926065208',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Container(
              height: 64,
              width: getWidth(context),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: const BoxDecoration(
                color: AppColors.color0B1E2DBg2,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: AppTextStyles.s20W500(color: Colors.white),
                  ),
                  Text(
                    '${model.type}- -${model.dimension}',
                    style: AppTextStyles.s12W400(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
