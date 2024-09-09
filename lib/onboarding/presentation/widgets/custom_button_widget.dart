import 'package:flutter/material.dart';
import 'package:test_ui/custom/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final double height;
  const CustomButtonWidget({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: CustomGradient.linear(
            colors: [Color(0xff075BD2), Color(0xff62A3FF)],
          ),
        ),
       
        child: Center(child: Text('Continue', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),)),
      )
    );
  }
}