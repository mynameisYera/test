import 'package:flutter/material.dart';

class CustomCheckboxWidget extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  final Color inactiveColor;

  const CustomCheckboxWidget({
    super.key,
    required this.isChecked,
    required this.onChanged,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.white,
  });

  @override
  _CustomCheckboxWidget createState() => _CustomCheckboxWidget();
}

class _CustomCheckboxWidget extends State<CustomCheckboxWidget> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
  }

  void _toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
    widget.onChanged(isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleCheckbox,
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isChecked ? widget.activeColor : widget.inactiveColor,
          border: Border.all(
            color: Colors.black54,
            width: 1.0,
          ),
        ),
        child: isChecked
            ? Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              )
            : null,
      ),
    );
  }
}
