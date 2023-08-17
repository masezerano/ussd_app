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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.onBackground.withOpacity(0.5)
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          const Text(
            'Press the above button too',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          CustomButton(
            text: 'Call',
            onPressed: () {
              _makePhoneCall('+250781882297');
            },
            iconName: Icons.call,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          CustomButton(
            text: 'Check Balance',
            onPressed: () {
              _makePhoneCall('*182*6*1#');
            },
            iconName: Icons.balance_sharp,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
          ),
          CustomButton(
            text: 'Buy Airtime',
            onPressed: () {
              _makePhoneCall('*182*2*1*1*1#');
            },
            iconName: Icons.money_off_csred_rounded,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          CustomButton(
            text: 'Buy Electricity',
            onPressed: () {
              _makePhoneCall('*182*2*2##');
            },
            iconName: Icons.electrical_services_outlined,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          CustomButton(
            text: 'Send Money',
            onPressed: () {
              _makePhoneCall('*182*1*1#');
            },
            iconName: Icons.send_to_mobile_outlined,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          CustomButton(
            text: 'Pay Bills',
            onPressed: () {
              _makePhoneCall('*182*3#');
            },
            iconName: Icons.payment,
          ),
        ],
      ),
    );
  }
}
