import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick/feature/characters/presentation/characters_screen/characters_screen.dart';
import 'package:rick/feature/episodes/presentation/episodes_screen.dart';
import 'package:rick/feature/location/presentation/location_screen.dart';
import 'package:rick/feature/settings/presentation/settings_screen.dart';
import 'package:rick/theme/app_colors.dart';
import 'package:rick/core/images/app_images.dart';


@RoutePage()
class BottomNavigatorScreen extends StatefulWidget {
  const BottomNavigatorScreen({Key? key, this.index = 0}) : super(key: key);
  final int index;

  @override
  State<BottomNavigatorScreen> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigatorScreen> {
  late int index = widget.index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.color0B1E2DBg2,
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.color0B1E2DBg2,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
          selectedItemColor: AppColors.color43D049Green,
          unselectedItemColor: AppColors.grey,
          currentIndex: index,
          onTap: (indexFrom) async {
            setState(() {
              index = indexFrom;
            });
          },
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                AppImages.navbarMainActive,
                height: 35,
              ),
              icon: Image.asset(
                AppImages.navbarMain,
                height: 35,
              ),
              label: 'Персонажи',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                AppImages.navbarLocatActive,
                height: 35,
              ),
              icon: Image.asset(
                AppImages.navbarLocat,
                height: 35,
              ),
              label: 'Локациии',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                AppImages.navbarEpiActive,
                height: 35,
              ),
              icon: Image.asset(
                AppImages.navbarEpi,
                height: 35,
              ),
              label: 'Эпизоды',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                AppImages.navbarSetActive,
                height: 35,
              ),
              icon: Image.asset(
                AppImages.navbarSet,
                height: 35,
              ),
              label: 'Настройки',
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> pages = [
  const CharactersScreen(),
  const LocationScreen(),
  const EpisodesScreen(),
  const SettingsScreen(),
];
