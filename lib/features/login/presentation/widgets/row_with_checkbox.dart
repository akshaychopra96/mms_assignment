import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';

class RowWithCheckBox extends StatefulWidget {
  const RowWithCheckBox({
    Key? key,
  }) : super(key: key);

  @override
  State<RowWithCheckBox> createState() => _RowWithCheckBoxState();
}

class _RowWithCheckBoxState extends State<RowWithCheckBox> {
  bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Transform.scale(
            scale: 0.5,
            child: Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.grey[300],
              ),
              child: Checkbox(
                  value: _checkBoxValue,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxValue = value!;
                    });
                  }),
            ),
          ),
          Transform.translate(
            offset: const Offset(-14, 1),
            child: const Text(
              CommonConstants.rememberMeText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
