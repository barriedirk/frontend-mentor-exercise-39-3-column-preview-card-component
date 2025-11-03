import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverButtonWidget extends StatelessWidget {
  final String labelText;
  final VoidCallback onPressed;

  const HoverButtonWidget({
    Key? key,
    required this.labelText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        textStyle: WidgetStateProperty.all<TextStyle>(
          GoogleFonts.lexendDeca(
            height: 1.65,
            fontWeight: FontWeight.normal,
            fontSize: 15.0,
          ),
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered)) {
            return Colors.transparent;
          }
          return Colors.white;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered)) {
            return Colors.white;
          }
          return Colors.black;
        }),
        side: WidgetStateProperty.resolveWith<BorderSide?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.hovered)) {
            return const BorderSide(color: Colors.white, width: 1);
          }
          return const BorderSide(color: Colors.transparent, width: 1);
        }),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
      child: Padding(
        // Removed 'const' here because labelText is dynamic
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        // 3. Use the parameter in the Text widget
        child: Text(labelText),
      ),
    );
  }
}
