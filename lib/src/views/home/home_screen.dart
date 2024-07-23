import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/src/views/coming_soon.dart';
import 'package:paradise_pay/src/views/home/widgets/transaction_widgets.dart';
import 'package:paradise_pay/src/views/my_qr_code/my_qr_code_screen.dart';
import 'package:paradise_pay/src/views/scan_to_pay/qr_scanner_page.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';
import 'package:paradise_pay/src/widgets/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
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
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComingSoon()),
                );
              },
              child: Icon(Icons.notifications_outlined, color: Colors.grey)),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.grey),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Total Balance',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '₦ 156,330.00',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppButton(
                            actionText: "+ Add Money",
                            action: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ComingSoon()),
                              );
                            }),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Quick actions',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      mainAxisSpacing: 3,
                      crossAxisSpacing: 10,
                      children: [
                        _buildQuickAction(Icons.qr_code, 'Scan to Pay', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => QRScannerPage()),
                          );
                        }),
                        _buildQuickAction(Icons.qr_code_2, 'Get QR Code', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyQRCodePage()),
                          );
                        }),
                        _buildQuickAction(Icons.send, 'Send Money', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComingSoon()),
                          );
                        }),
                        _buildQuickAction(Icons.request_page, 'Request Money',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComingSoon()),
                          );
                        }),
                        _buildQuickAction(Icons.receipt, 'Pay bills', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComingSoon()),
                          );
                        }),
                        _buildQuickAction(Icons.more_horiz, 'More', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComingSoon()),
                          );
                        }),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              )),
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Refer and earn ₦800 when the user received their first payment from buyer',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 90,
                  child: Container(
                      height: 100,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: TransactionHistroy()),
                ),
                Positioned(
                  top: 60,
                  child: Container(
                      width: width,
                      height: 60,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'Transactions',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildQuickAction(IconData icon, String label, ontap) {
    return InkWell(
      onTap: ontap,
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
