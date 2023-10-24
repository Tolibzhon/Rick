import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick/feature/episodes/presentation/cubit/get_episodes_cubit.dart';
import 'package:rick/feature/episodes/presentation/widget/widget_episodes.dart';
import 'package:rick/server/service_locator.dart';
import 'package:rick/widgets/app_error_text.dart';
import 'package:rick/widgets/app_indicator.dart';
import 'package:rick/widgets/custom_text_field.dart';

class EpisodesScreen extends StatelessWidget {
  const EpisodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GetEpisodesCubit>(),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 16),
              BlocBuilder<GetEpisodesCubit, GetEpisodesState>(
                builder: (context, state) {
                  return CustomTextField(
                    onChanged: (val) {
                      context
                          .read<GetEpisodesCubit>()
                          .getEpisodes(nameFrom: val);
                    },
                    hintText: 'Найти локацию',
                  );
                },
              ),
              const SizedBox(height: 40),
              Expanded(
                child: BlocBuilder<GetEpisodesCubit, GetEpisodesState>(
                  builder: (context, state) {
                    return state.when(
                      loading: () => const AppIndicator(),
                      error: (error) => AppErrorText(error: error),
                      success: ((model) {
                        return ListView.separated(
                          shrinkWrap: true,
                          itemCount: model.results.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) => WidgetEpisodes(
                            modal: model.results[index],
                          ),
                        );
                      }),
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
