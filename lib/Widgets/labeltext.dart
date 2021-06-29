import 'package:authui/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:ui_helper/ui_helper.dart';

class Label extends StatefulWidget {
  final String text;
  final String label;
  const Label({
    Key? key,
    required this.text,
    required this.label
  }) : super(key: key);

  @override
  _LabelState createState() => _LabelState();
}

class _LabelState extends State<Label> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpaceMedium,
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.text,
              style: bodyStyle.copyWith(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        RoundedInputField(
          onChanged: (value) {},
          hintText: widget.label,
        ),
      ],
    );
  }
}
