import 'package:boltryk_app/core/presentation/button/app_button.dart';
import 'package:boltryk_app/core/presentation/button/app_text_button.dart';
import 'package:boltryk_app/core/presentation/divider/app_divider.dart';
import 'package:boltryk_app/core/responsive/responsive_breakpoints.dart';
import 'package:boltryk_app/core/responsive/responsive_data_provider.dart';
import 'package:boltryk_app/core/router/routes.dart';
import 'package:boltryk_app/core/router/routes_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(94);

  void _onAboutTap({
    required BuildContext context,
  }) {
    context.push(
      const DashboardRoute().location,
    );
  }

  void _onContactTap({
    required BuildContext context,
  }) {
    context.push(
      const ContactRoute().location,
    );
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
                AppTextButton(
                  label: 'About',
                  onTap: () => _onAboutTap(context: context),
                ),
                AppTextButton(
                  label: 'Foodie',
                  onTap: () {},
                ),
                AppButton(
                  label: 'Contact',
                  icon: Icons.contact_mail,
                  onTap: () => _onContactTap(context: context),
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
