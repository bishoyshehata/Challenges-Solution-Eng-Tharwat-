import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Text_Form_Field extends StatelessWidget {
  final TextEditingController controller ;
  final bool obsecureText ;
  final Function validator ;
  final Widget prefex;
  final Widget suffix;
  final String hintText;
  const Text_Form_Field({
    required this.controller ,
    required this.obsecureText,
    required this.validator,
    required this.prefex,
    required this.suffix,
    required this.hintText,


    Key? key ,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecureText,
      keyboardType: TextInputType.text,
      validator: (value) {
        validator(value);
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: prefex ,
        suffixIcon: suffix ,
        hintText: hintText,
        filled: true,
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10)
        )
        ,
      ),

    );

  }
}
