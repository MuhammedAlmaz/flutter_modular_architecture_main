import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shell/components/container.dart';
import 'package:shell/components/button.dart';
import 'package:account/screens/accounts.dart';
import 'package:loan/screens/loan.dart';
import 'package:transfer/screens/transfer.dart';
import 'package:payment/screens/payment.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void navigate({required Widget screen, required BuildContext context}) => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => screen),
      );

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      title: "Banking Application",
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppButton(
              title: "Account",
              onPressed: () => navigate(screen: AccountsScreen(), context: context),
            ),
            AppButton(
              title: "Loan",
              onPressed: () => navigate(screen: LoansScreen(), context: context),
            ),
            AppButton(
              title: "Payment",
              onPressed: () => navigate(screen: PaymentsScreen(), context: context),
            ),
            AppButton(
              title: "Transfer",
              onPressed: () => navigate(screen: TransfersScreen(), context: context),
            ),
          ],
        ),
      ),
    );
  }
}
