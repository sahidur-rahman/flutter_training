import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final currency, amount, accType;
  final Color? color;

  const CardContainer(
      {Key? key,
      required this.currency,
      required this.amount,
      required this.accType,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Currency type
            Text(
              currency,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
            ),

            // amount in the account
            Text(
              amount,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.white,
              ),
            ),

            //Account type
            Text(
              accType,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
