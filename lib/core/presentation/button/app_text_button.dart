import 'package:flutter/material.dart';

class AppTextButton extends StatefulWidget {
  const AppTextButton({
    super.key,
    required this.label,
    required this.onTap,
    this.style,
    this.underlineColor,
  });

  final String label;
  final VoidCallback onTap;
  final TextStyle? style;
  final Color? underlineColor;

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
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
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: _isHovered
                ? Border(
                    bottom: BorderSide(
                    color: widget.underlineColor ?? theme.primaryColor,
                    width: 1.5,
                  ))
                : null,
          ),
          child: Text(
            widget.label,
            style: widget.style ?? theme.textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
