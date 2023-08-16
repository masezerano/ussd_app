import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ussd_app/screens/custom_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(158, 23, 106, 173),
            Color.fromARGB(255, 78, 93, 172)
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Press the above button too',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          CustomButton(
            text: 'Call',
            onPressed: () {
              _makePhoneCall('*182*2*1*1*1#');
            },
            iconName: Icons.call,
          ),
          CustomButton(
            text: 'Check Balance',
            onPressed: () {
              _makePhoneCall('*182*2*1*1*1#');
            },
            iconName: Icons.balance,
          ),
          CustomButton(
            text: 'Buy Airtime',
            onPressed: () {
              _makePhoneCall('*182*2*1*1*1#');
            },
            iconName: Icons.call,
          ),
        ],
      ),
    );
  }
}
