import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick/feature/characters/presentation/characters_screen/cubits/get_person_cubit/get_person_cubit.dart';
import 'package:rick/feature/characters/presentation/characters_screen/widgets/widget_person.dart';
import 'package:rick/routes/mobile_auto_router.gr.dart';
import 'package:rick/server/service_locator.dart';
import 'package:rick/widgets/app_error_text.dart';
import 'package:rick/widgets/app_indicator.dart';
import 'package:rick/widgets/custom_text_field.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/theme/app_text_styles.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetPersonCubit>(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Builder(
                  builder: (context) => CustomTextField(
                    onChanged: (val) {
                      context.read<GetPersonCubit>().getPersons(nameFrom: val);
                      // context.read<GetPersonCubit>().getPersons(page: page+1);
                    },
                    suffix: InkWell(
                      onTap: () async {
                        // AppRouting.pushFunction(const CharacterFiltersRoute());
                        final result = await context.router.push(
                          CharacterFiltersRoute(
                            gender: context.read<GetPersonCubit>().gender,
                            status: context.read<GetPersonCubit>().status,
                          ),
                        ) as Map<String, dynamic>?;

                        if (result != null) {
                          context.read<GetPersonCubit>().getPersons(
                                genderFrom: result['gender'],
                                statusFrom: result['status'],
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
                      size: 22,
                      color: AppColors.lightGrey,
                    ),
                    hintText: 'Найти персонажа',
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<GetPersonCubit, GetPersonState>(
                    builder: (context, state) {
                      return state.when(
                        loading: () => const AppIndicator(),
                        error: (error) => AppErrorText(error: error),
                        success: (model) {
                          // print('model.results --- ${model.results.length}');
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Всего персонажей: ${model.info.count}',
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
                                  itemBuilder: (context, index) => WidgetPerson(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
