import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick/feature/location/presentation/cubit/get_location_cubit.dart';
import 'package:rick/feature/location/presentation/widget/widget_location.dart';
import 'package:rick/routes/mobile_auto_router.gr.dart';
import 'package:rick/server/service_locator.dart';
import 'package:rick/widgets/app_error_text.dart';
import 'package:rick/widgets/app_indicator.dart';
import 'package:rick/widgets/custom_text_field.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetLocationCubit>(),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Builder(builder: (context) {
                return CustomTextField(
                  onChanged: (val) {
                    context.read<GetLocationCubit>().getLocation(nameFrom: val);
                    // context.read<GetLocationCubit>().getLocation(page: page+1);
                  },
                  suffix: InkWell(
                    onTap: () async {
                      final result = await context.router.push(
                        LocationFiltersRoute(
                          type: context.read<GetLocationCubit>().type,
                          dimension: context.read<GetLocationCubit>().dimension,
                        ),
                      ) as Map<String, dynamic>?;
                      if (result != null) {
                        context.read<GetLocationCubit>().getLocation(
                              typeFrom: result['type'],
                              dimensionFrom: result['dimension'],
                            );
                      }
                    },
                    child: const Icon(
                      Icons.filter_alt,
                      color: AppColors.lightGrey,
                    ),
                  ),
                  prefix: const Icon(
                    Icons.search,
                    size: 12,
                    color: AppColors.lightGrey,
                  ),
                  hintText: 'Найти локацию',
                );
              }),
              const SizedBox(height: 20),
              Expanded(
                child: BlocBuilder<GetLocationCubit, GetLocationState>(
                  builder: (context, state) {
                    return state.when(
                      loading: () => const AppIndicator(),
                      error: (error) => AppErrorText(error: error),
                      success: (model) {
                        print('model.results --- ${model.results.length}');
                        return Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Всего локаций: ${model.info.count}',
                                  style: AppTextStyles.s12W500(
                                      color: AppColors.lightGrey),
                                ),
                                const Spacer(),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Expanded(
                              child: ListView.separated(
                                shrinkWrap: true,
                                itemCount: model.results.length,
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: 16),
                                itemBuilder: (context, index) => widgetLocation(
                                  model: model.results[index],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
