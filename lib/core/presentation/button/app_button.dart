import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.label,
    this.icon,
    required this.onTap,
  });

  final String label;
  final IconData? icon;
  final VoidCallback onTap;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isHovered = false;

  void _setHover(bool isHover) {
    setState(() {
      _isHovered = isHover;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => _setHover(true),
        onExit: (_) => _setHover(false),
        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          transform: Matrix4.translationValues(
            0,
            _isHovered ? -2 : 0,
            0,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: const BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 12,
              ),
              child: Row(
                children: [
                  Text(
                    widget.label,
                    style: theme.textTheme.displayMedium,
                  ),
                  if (widget.icon != null) ...[
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      widget.icon,
                      size: 14,
                      color: theme.colorScheme.surface,
                    )
                  ]
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
