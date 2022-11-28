import 'package:flutter/Material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final TextStyle style;
  const TextFormFieldWidget({
    Key? key,
    required this.hintText,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: style,
        fillColor: Color(0xffFCFCFC),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0xffDEDEDE),
          ),
        ),
        border: InputBorder.none,
      ),
    );
  }
}
