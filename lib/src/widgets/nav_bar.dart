import 'package:flutter/material.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/src/views/coming_soon.dart';
import 'package:paradise_pay/src/views/login/login_screen.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Hello Kate",
                style: Theme.of(context).textTheme.titleLarge),
            accountEmail: Text("Kateoshawa@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  PngAssets.kate,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                buildTitle(
                  Icons.person_outline,
                  "Account Details",
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComingSoon()),
                    );
                  },
                ),
                buildTitle(Icons.notifications_outlined, "Notifications", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ComingSoon()),
                  );
                }, "3"),
                buildTitle(
                  Icons.card_giftcard_outlined,
                  "Reward",
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComingSoon()),
                    );
                  },
                ),
                buildTitle(
                  Icons.wallet_giftcard_outlined,
                  "Withdrawal",
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComingSoon()),
                    );
                  },
                ),
                buildTitle(
                  Icons.settings_outlined,
                  "Settings",
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ComingSoon()),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppButton(
              backGroundColor: Theme.of(context).colorScheme.surface,
              borderColor: Theme.of(context).colorScheme.error,
              color: Theme.of(context).colorScheme.error,
              actionText: "Logout",
              action: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildTitle(IconData icon, String title, VoidCallback onTap,
      [String? trailing]) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(title),
      trailing: trailing != null
          ? Container(
              width: 20,
              alignment: Alignment.center,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(25),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                trailing,
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            )
          : null,
      onTap: onTap,
    );
  }
}
