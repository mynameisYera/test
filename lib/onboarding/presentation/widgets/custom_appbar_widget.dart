import 'package:flutter/material.dart';
import 'package:test_ui/custom/colors.dart'; // Make sure this import is correct

class CustomAppbarWidget extends StatelessWidget {
  final int point;

  const CustomAppbarWidget({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 5,
            width: MediaQuery.of(context).size.width - 20,
            child: ListView.builder(
              itemCount: point,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                if (index <= 3) {
                  return Container(
                    width: (MediaQuery.of(context).size.width / 3) - 15,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      gradient: CustomGradient.linear(
                        colors: [Color(0xff075BD2), Color(0xff62A3FF)],
                      ),
                    ),
                  );
                } else {
                  return Container(
                    width: (MediaQuery.of(context).size.width / 3) - 15,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.black, 
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
