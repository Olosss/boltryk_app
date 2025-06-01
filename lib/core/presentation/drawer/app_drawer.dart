import 'package:boltryk_app/core/presentation/button/app_button.dart';
import 'package:boltryk_app/core/presentation/button/app_icon_button.dart';
import 'package:boltryk_app/core/presentation/button/app_text_button.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.onAboutTap,
    required this.onContactTap,
  });

  final VoidCallback onAboutTap;
  final VoidCallback onContactTap;

  void _onCloseDrawerTap({
    required BuildContext context,
  }) {
    Navigator.of(context).pop();
  }

  void _onAboutTap({
    required BuildContext context,
  }) {
    _onCloseDrawerTap(context: context);
    onAboutTap();
  }

  void _onContactTap({
    required BuildContext context,
  }) {
    _onCloseDrawerTap(context: context);
    onContactTap();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return SizedBox(
      width: 256,
      child: Drawer(
        backgroundColor: theme.colorScheme.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            24,
          ),
          child: Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: AppIconButton(
                  color: theme.colorScheme.surface,
                  icon: Icons.close,
                  onTap: () => _onCloseDrawerTap(
                    context: context,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AppTextButton(
                label: 'About',
                style: theme.textTheme.displayMedium,
                underlineColor: theme.colorScheme.surface,
                onTap: () => _onAboutTap(
                  context: context,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              AppTextButton(
                label: 'Foodie',
                style: theme.textTheme.displayMedium,
                underlineColor: theme.colorScheme.surface,
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              Text('Email', style: theme.textTheme.labelSmall),
              Text(
                'aleksander.boltryk@gmail.com',
                style: theme.textTheme.displaySmall,
              ),
              const SizedBox(
                height: 24,
              ),
              AppButton(
                label: 'Contact',
                icon: Icons.contact_mail,
                backgroundColor: theme.colorScheme.surface,
                textStyle: theme.textTheme.titleMedium,
                iconColor: theme.colorScheme.secondary,
                onTap: () => _onContactTap(
                  context: context,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
