import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  double offsetX = 0;
  double offsetY = 0;

  CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offsetX,
    required this.offsetY,
  });

  final Color _blackColor = const Color(0xFF1F2123);

  final double _opacity = 0.8;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(offsetX, offsetY),
      child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            color: isInverted
                                ? _blackColor.withOpacity(_opacity)
                                : Colors.white.withOpacity(_opacity),
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Transform.scale(
                  scale: 2,
                  child: Transform.translate(
                    offset: const Offset(-5, 10),
                    child: Icon(
                      icon,
                      color: isInverted ? _blackColor : Colors.white,
                      size: 88,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
