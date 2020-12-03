import 'package:flutter/material.dart';

class AppInputField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController textEditingController;

  AppInputField({this.hintText, this.isPassword, this.textEditingController});

  @override
  _AppInputFieldState createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  bool toggle = true;

  showHidePassword() {
    setState(() {
      if (widget.isPassword) {
        toggle = !toggle;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            controller: widget.textEditingController,
            obscureText: widget.isPassword ? toggle : false,
            decoration: InputDecoration(
              hintText: widget.hintText,
              suffixIcon: widget.isPassword
                  ? GestureDetector(
                      onTap: () => showHidePassword(),
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                      ),
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
