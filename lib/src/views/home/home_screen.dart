import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/src/views/home/widgets/transaction_widgets.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';
import 'package:paradise_pay/src/widgets/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: SvgPicture.asset(
                SvgAssets.hamBurgerMenu,
                height: 40,
                width: 40,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: const [
          Icon(Icons.notifications_outlined, color: Colors.grey),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.grey),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Total Balance',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 5),
            const Text(
              '₦ 156,330.00',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            AppButton(
                actionText: "+ Add Money",
                action: () {
                  print("Yet to Impliment Add money");
                }),
            const SizedBox(height: 20),
            const Text(
              'Quick actions',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                _buildQuickAction(Icons.qr_code, 'Scan to Pay'),
                _buildQuickAction(Icons.qr_code_2, 'Get QR Code'),
                _buildQuickAction(Icons.send, 'Send Money'),
                _buildQuickAction(Icons.request_page, 'Request Money'),
                _buildQuickAction(Icons.receipt, 'Pay bills'),
                _buildQuickAction(Icons.more_horiz, 'More'),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF0063F4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Refer and earn ₦800 when the user received their first payment from buyer',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Transactions',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TransactionHistroy(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction(IconData icon, String label) {
    return InkWell(
      onTap: () {
        print("Yet to Imploment " + label);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue[50],
            child: Icon(icon, color: Color(0xFF0063F4)),
          ),
          SizedBox(height: 5),
          Text(label,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
