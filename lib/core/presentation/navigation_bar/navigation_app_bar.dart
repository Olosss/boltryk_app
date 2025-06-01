import 'package:boltryk_app/core/presentation/button/app_button.dart';
import 'package:boltryk_app/core/presentation/button/app_icon_button.dart';
import 'package:boltryk_app/core/presentation/button/app_text_button.dart';
import 'package:boltryk_app/core/presentation/divider/app_divider.dart';
import 'package:boltryk_app/core/responsive/responsive_breakpoints.dart';
import 'package:boltryk_app/core/responsive/responsive_data_provider.dart';
import 'package:flutter/material.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({
    super.key,
    required this.onAboutTap,
    required this.onContactTap,
  });

  final VoidCallback onAboutTap;
  final VoidCallback onContactTap;

  @override
  Size get preferredSize => const Size.fromHeight(94);

  void _onOpenDrawerTap({
    required BuildContext context,
  }) {
    if(Scaffold.of(context).isEndDrawerOpen){
      return;
    }
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final responsiveData = ResponsiveDataProvider.of(context)!;

    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: ResponsiveBreakpoints.desktopLargeMinWidth,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24,
              horizontal: responsiveData.isDesktop ? 0 : 16,
            ),
            child: Row(
              spacing: 48,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 44,
                ),
                const Spacer(),
                responsiveData.isMobile
                    ? AppIconButton(
                        icon: Icons.menu,
                        onTap: () => _onOpenDrawerTap(context: context),
                      )
                    : Row(
                        spacing: 64,
                        children: [
                          AppTextButton(
                            label: 'About',
                            onTap: onAboutTap,
                          ),
                          AppTextButton(
                            label: 'Foodie',
                            onTap: () {},
                          ),
                          AppButton(
                            label: 'Contact',
                            icon: Icons.person,
                            onTap: onContactTap,
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
        const AppDivider(),
      ],
    );
  }
}
