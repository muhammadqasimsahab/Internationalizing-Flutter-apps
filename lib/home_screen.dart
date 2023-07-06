import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        // textValue = 'Switch Button is ON';
        Get.updateLocale(const Locale('en', 'US'));
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        // textValue = 'Switch Button is OFF';
        Get.updateLocale(const Locale('ur', 'PK'));
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Languages Changes'),
        actions: [
          Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.blue,
            activeTrackColor: Colors.yellow,
            inactiveThumbColor: Colors.redAccent,
            inactiveTrackColor: Colors.orange,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Text(
          //   '$textValue',
          //   style: TextStyle(fontSize: 20),
          // ),
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en', 'US'));
                  },
                  child: const Text('English')),
              const SizedBox(width: 20),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur', 'PK'));
                  },
                  child: const Text('Urdu')),
              const SizedBox(width: 20),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ar', 'UAE'));
                  },
                  child: const Text('Arbic'))
            ],
          )
        ],
      ),
    );
  }
}
