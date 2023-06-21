// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final bool isPasswordField;
  final String fieldName;

  const CustomFormField({
    Key? key,
    required this.isPasswordField,
    required this.fieldName,
  }) : super(key: key);

  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(      
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
              child: Text(
                widget.fieldName,
                style: TextStyle(
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    widget.isPasswordField ? Icons.lock : Icons.email,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    obscureText: widget.isPasswordField ? _obscureText : false,
                    decoration: InputDecoration(
                      hintText:
                          widget.isPasswordField ? 'Password' : 'Email Address',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                if (widget.isPasswordField)
                  IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
