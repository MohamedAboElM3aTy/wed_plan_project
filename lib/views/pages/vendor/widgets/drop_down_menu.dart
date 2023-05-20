import 'package:flutter/material.dart';

class DropDownMenuComponent extends StatelessWidget {
  final void Function(String? value) onChanged;
  final List<String> items;
  final String? selectedValue;
  final String hint;
  const DropDownMenuComponent({
    Key? key,
    required this.onChanged,
    required this.items,
    required this.hint, this.selectedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedValue,
      icon: const Icon(Icons.arrow_drop_down),
      isExpanded: true,
      elevation: 16,
      style: Theme.of(context).textTheme.bodyLarge,
      hint: FittedBox(
        child: Text(
          hint,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
            fontSize: 22,
            ),
        ),
      ),
      onChanged: onChanged,
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
