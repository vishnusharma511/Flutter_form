import 'package:flutter/material.dart';

class CommonTextFormField extends StatelessWidget {
  final String label;
  final String value;
  final int maxLength;
  final TextInputType keyboardType;
  final textCapitalization;
  final bool obscureText;
  final IconData prefixIcon;
  const CommonTextFormField(
      {@required this.value,
      @required this.label,
      this.maxLength,
      this.keyboardType,
      this.textCapitalization,
      this.obscureText,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          fillColor: Colors.teal,
          focusColor: Colors.teal,
          // border: InputBorder.none,
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.teal,
          ),
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(color: Colors.white),
          ),
        ),
        maxLength: maxLength,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        obscureText: obscureText,
        validator: (String value) {
          if (value.isEmpty) {
            return '$label is Required';
          }
          return null;
        },
        onSaved: (String value) {
          value = value;
        },
      ),
    );
  }
}

// Widget _buildCalories() {
//   return TextFormField(
//     decoration: InputDecoration(labelText: 'Calories'),
//     keyboardType: TextInputType.number,
//     validator: (String value) {
//       int calories = int.tryParse(value);

//       if (calories == null || calories <= 0) {
//         return 'Calories must be greater than 0';
//       }

//       return null;
//     },
//     onSaved: (String value) {
//       _calories = value;
//     },
//   );
// }
