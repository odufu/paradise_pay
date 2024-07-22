import 'package:flutter/material.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';
import 'package:share_plus/share_plus.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class MyQRCodePage extends StatefulWidget {
  @override
  _MyQRCodePageState createState() => _MyQRCodePageState();
}

class _MyQRCodePageState extends State<MyQRCodePage> {
  String price = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    if (price.isNotEmpty)
                      Text(
                        '₦ $price',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    Image.asset(
                      SvgAssets.qrCode,
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    if (price.isEmpty)
                      TextButton.icon(
                        onPressed: () async {
                          String? newPrice = await _showAddPriceDialog(context);
                          if (newPrice != null) {
                            setState(() {
                              price = newPrice;
                            });
                          }
                        },
                        icon: Icon(Icons.add),
                        label: Text('Add Price'),
                      )
                    else
                      TextButton(
                        onPressed: () {
                          setState(() {
                            price = '';
                          });
                        },
                        child: Text(
                          'Clear price',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Text(
                    'Create your new QR Code for at the specific price intended. Share or Save use',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 10),
                  AppButton(
                    actionText: "Share QR Code",
                    action: () {
                      _shareQRCode();
                    },
                  ),
                  SizedBox(height: 10),
                  AppButton(
                    actionText: "Save Image",
                    backGroundColor: Theme.of(context).colorScheme.surface,
                    color: Theme.of(context).colorScheme.primary,
                    action: () {
                      _saveImage();
                    },
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> _showAddPriceDialog(BuildContext context) async {
    String newPrice = '';
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Price'),
          content: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter price',
            ),
            onChanged: (value) {
              newPrice = value;
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(newPrice);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _shareQRCode() {
    Share.share('Check out my QR code with price: ₦$price');
  }

  void _saveImage() async {
    // Replace with the actual path of your QR code image
    final result = await ImageGallerySaver.saveFile('assets/images');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Image saved to gallery: $result')),
    );
  }
}
