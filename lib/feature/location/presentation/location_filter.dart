import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';
import 'package:rick/widgets/custom_button.dart';

@RoutePage()
class LocationFiltersScreen extends StatefulWidget {
  const LocationFiltersScreen(
      {super.key, required this.type, required this.dimension});
  final String type;
  final String dimension;

  @override
  State<LocationFiltersScreen> createState() => _CharacterFiltersScreenState();
}

class _CharacterFiltersScreenState extends State<LocationFiltersScreen> {
  late String type = widget.type;
  late String dimension = widget.dimension;

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Тип',
                style: AppTextStyles.s12W500(color: AppColors.lightGrey),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'Dream';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'Dream'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Dream',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'Planet';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'Planet'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Planet',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'Cluster';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'Cluster'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Cluster',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'Space station';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'Space station'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Space station',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'Microverse';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'Microverse'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Microverse',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'TV';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'TV'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'TV',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'Resort';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'Resort'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Resort',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'Fantasy town';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'Fantasy town'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Fantasy town',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      type = 'unknown';
                      setState(() {});
                    },
                    child: Icon(
                      type == 'unknown'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'unknown',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(color: AppColors.color0B1E2DBg2),
              const SizedBox(height: 30),
              Text(
                'Измерение',
                style: AppTextStyles.s12W500(color: AppColors.lightGrey),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      dimension = 'Dimension C-137';
                      setState(() {});
                    },
                    child: Icon(
                      dimension == 'Dimension C-137'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Dimension C-137',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      dimension = 'Replacement Dimension';
                      setState(() {});
                    },
                    child: Icon(
                      dimension == 'Replacement Dimension'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Replacement Dimension',
                    style: AppTextStyles.s16W400(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      dimension = 'unknown';
                      setState(() {});
                    },
                    child: Icon(
                      dimension == 'unknown'
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_outlined,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'unknown',
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
                      'type': type,
                      'dimension': dimension,
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
