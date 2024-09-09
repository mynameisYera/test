import 'package:flutter/material.dart';
import 'package:test_ui/onboarding/presentation/widgets/custom_appbar_widget.dart';
import 'package:test_ui/onboarding/presentation/widgets/custom_button_widget.dart';
import 'package:test_ui/onboarding/presentation/widgets/custom_choose_widget.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            children: [
              const CustomAppbarWidget(
                point: 1,
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 276,
                child: const Text('What’s your purpose of using VPN?', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700
                ),),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomChooseWidget(
                  img: "1",
                ),
              ),
              
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomChooseWidget(
                  img: '2',
                ),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomChooseWidget(
                  img: "3",
                ),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomChooseWidget(
                  img: '4',
                ),
              ),
              Expanded(child: SizedBox()),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomButtonWidget(height: 54),
              )
              
            ],
          ),
      ),
    );
  }
}