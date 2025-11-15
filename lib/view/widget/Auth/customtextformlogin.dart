import 'package:flutter/material.dart';
import 'package:untitled/core/constant/color.dart';

class Customtextformlogin extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? suffixIcon;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final TextInputType? type;
  final bool? hide;
  final Function()? ontap;
  const Customtextformlogin({
    super.key,
    this.hintText,
    this.labelText,
    this.suffixIcon,
    this.mycontroller,
    required this.valid,
    this.type,
    this.hide,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isObscure = hide == true;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.grey.shade50,
          ],
        ),
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
        border: Border.all(
          color: Color(ColorApp.greyColor).withOpacity(0.18),
        ),
      ),
      child: TextFormField(
        validator: valid,
        controller: mycontroller,
        obscureText: isObscure,
        keyboardType: type,
        style: theme.textTheme.bodyLarge,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey[500]),
          labelText: labelText,
          labelStyle: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          filled: true,
          fillColor: Colors.white,
          suffixIcon: suffixIcon != null
              ? Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: ontap,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        suffixIcon,
                        color: theme.primaryColor,
                        size: 22,
                      ),
                    ),
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.primaryColor, width: 1.5),
            borderRadius: BorderRadius.circular(40),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
