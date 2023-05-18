import 'package:flutter/material.dart';
import 'package:toonflix/ui_challenge/widgets/button.dart';
import 'package:toonflix/ui_challenge/widgets/currency_card.dart';

class UiBaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xff181818),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '\$5 194 482',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      Button(
                          text: 'Transfer',
                          backgroundColor: Color(0xFFF1B33B),
                          textColor: Colors.white),
                      Button(
                          text: 'Request',
                          backgroundColor: Color(0xFFF1F2123),
                          textColor: Colors.white),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CurrencyCard(
                    name: 'Euro',
                    amount: '6 428',
                    code: 'EUR',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    offsetX: 0,
                    offsetY: 0,
                  ),
                  CurrencyCard(
                    name: 'Bitcoin',
                    amount: '9 785',
                    code: 'BTC',
                    icon: Icons.currency_bitcoin_outlined,
                    isInverted: true,
                    offsetX: 0,
                    offsetY: -20,
                  ),
                  CurrencyCard(
                    name: 'Dollar',
                    amount: '428',
                    code: 'USD',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                    offsetX: 0,
                    offsetY: -35,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
