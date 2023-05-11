import 'package:flutter/material.dart';

class CircleStack extends StatelessWidget {
  const CircleStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.8,
      height: MediaQuery.of(context).size.width * 1.8,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFA27CD8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(80),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFAA88DF),
          ),
          child: Padding(
            padding: const EdgeInsets.all(80),
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFB798E4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
