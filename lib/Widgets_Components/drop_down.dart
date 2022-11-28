import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/Material.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    Key? key,
    required this.genderItems,
    required this.TextHint,
  }) : super(key: key);

  final List<String> genderItems;
  final TextHint;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButtonFormField2(
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            //Add isDense true and zero Padding.
            //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
            isDense: true,
            contentPadding: EdgeInsets.zero,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Color(0xffDEDEDE),
              ),
            ),

            //Add more decoration as you want here
            //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
          ),
          isExpanded: true,
          hint: Text(
            TextHint,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff121212),
            ),
          ),
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          iconSize: 30,
          buttonHeight: 55,
          buttonPadding: const EdgeInsets.only(left: 20, right: 10),
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          items: genderItems
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          validator: (value) {
            if (value == null) {
              return '$TextHint';
            }
          },
          onChanged: (value) {
            //Do something when changing the item if you want.
          },
          onSaved: (value) {
            // selectedValue = value.toString();
          },
        ),
      ],
    );
  }
}
