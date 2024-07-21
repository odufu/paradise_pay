import 'package:flutter/material.dart';

class OTPInput extends StatefulWidget {
  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  List<TextEditingController> _controllers =
      List.generate(6, (index) => TextEditingController());

  @override
  void dispose() {
    _focusNodes.forEach((focusNode) => focusNode.dispose());
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _nextField(String value, int index) {
    if (value.length == 1 && index < 5) {
      _focusNodes[index].unfocus();
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.length == 1 && index == 5) {
      _focusNodes[index].unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(6, (index) {
        return SizedBox(
          width: 40,
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            decoration: InputDecoration(
              
              counterText: "",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                
              ),
            ),
            onChanged: (value) {
              _nextField(value, index);
            },
          ),
        );
      }),
    );
  }
}
