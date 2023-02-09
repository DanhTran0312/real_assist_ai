import 'package:flutter/material.dart';

class PrivacyChip extends StatelessWidget {
  const PrivacyChip({super.key});

  @override
  Widget build(BuildContext context) {
    return const Chip(
      label: Text('This chat is end-to-end encrypted'),
      backgroundColor: Color(0xffe1e3ed),
      labelStyle: TextStyle(
        color: Colors.black38,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
