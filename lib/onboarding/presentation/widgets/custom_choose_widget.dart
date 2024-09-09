import 'package:flutter/material.dart';
import 'package:test_ui/onboarding/presentation/widgets/custom_checkbox_widget.dart';

class CustomChooseWidget extends StatelessWidget {
  final String img;
  const CustomChooseWidget({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 52,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xffE5E5EA)),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Image.asset('assets/$img.png', width: 22,),
                SizedBox(
                  width: 5,
                ),
                const Text('Optimize For High-speed', style: TextStyle(fontSize: 17),),
                Expanded(child: SizedBox()),
                CustomCheckboxWidget(
                  isChecked: false, 
                  onChanged:(value) => {},
                )
            
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}