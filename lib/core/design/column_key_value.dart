import 'package:flutter/material.dart';

class ColumnKeyValue extends StatelessWidget {
  const ColumnKeyValue({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final Widget label;
  final Widget value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 14,
            ),
            child: label,
          ),
          DefaultTextStyle(
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            child: value,
          ),
        ],
      ),
    );
  }
}
