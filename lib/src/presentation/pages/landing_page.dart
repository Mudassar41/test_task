import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_movies_app/src/data/models/bottom_nav_item_model/bottom_nav_item_model.dart';
import 'package:task_movies_app/src/presentation/pages/up_coming_movies_page.dart';
import 'package:task_movies_app/src/shared/widgets/custom_text.dart';
import 'package:task_movies_app/src/utils/app_assets.dart';
import 'package:task_movies_app/src/utils/app_colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  final List<BottomNavItemModel> bottomNavItems = [
    BottomNavItemModel(
      assetPath: AppAssets.fourDots,
      label: 'Dashboard',
      width: 25,
      height: 25,
    ),
    BottomNavItemModel(
      assetPath: AppAssets.watch,
      label: 'Watch',
    ),
    BottomNavItemModel(
      assetPath: AppAssets.mediaLibrary,
      label: 'Media Library',
    ),
    BottomNavItemModel(
      assetPath: AppAssets.list,
      label: 'More',
      height: 18,
      width: 18,
    ),
  ];

  final List<Widget> _screens = [
    const UpComingMoviesPage(),
    const UpComingMoviesPage(),
    const UpComingMoviesPage(),
    const UpComingMoviesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.raisinBlack,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) =>
              setState(() => _currentIndex = index),
          height: 70,
          backgroundColor: Colors.transparent,
          // prevent override from NavigationBar
          indicatorColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: List.generate(bottomNavItems.length, (index) {
            final item = bottomNavItems[index];
            final isSelected = _currentIndex == index;
            return NavigationDestination(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  SvgPicture.asset(
                    item.assetPath,
                    width: item.width,
                    height: item.height,
                    color: isSelected ? Colors.white : Colors.grey,
                  ),
                  if (index != 0) const SizedBox(height: 8),
                  CustomText(
                    text: item.label,
                    color: isSelected ? Colors.white : Colors.grey,
                    fontSize: 10,
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                  ),
                ],
              ),
              label: '',
            );
          }),
        ),
      ),
    );
  }
}
