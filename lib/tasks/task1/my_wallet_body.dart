import 'package:flutter/material.dart';
import 'package:flutter_training/tasks/task1/fragments/card_container.dart';

class MyWalletBodyUI extends StatelessWidget {
  const MyWalletBodyUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  maxRadius: 50,
                  backgroundImage: AssetImage('assets/images/my_image.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Shaidur Rahman'.toUpperCase(),
                  style: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'My accounts details',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                CardContainer(
                    currency: 'BDT',
                    amount: '2658',
                    accType: 'Savings',
                    color: Colors.redAccent),

                CardContainer(
                    currency: 'USD',
                    amount: '7458',
                    accType: 'Main Income',
                    color: Colors.green),

                CardContainer(
                    currency: 'ERO',
                    amount: '9417',
                    accType: 'Assets',
                    color: Colors.lime),

                CardContainer(
                    currency: 'BDT',
                    amount: '2658',
                    accType: 'Expenses',
                    color: Colors.deepOrange),
              ],
            )
          ],
        ),
      ),
    );
  }
}
