import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiki/constants/constant.dart';

// import 'package:quiki/theme/theme.dart';

class ManualLocScreen extends StatelessWidget {
  const ManualLocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(paddingLarge),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Full Name"),
            ),
            gapLarge,
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "+91",
                      )),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
