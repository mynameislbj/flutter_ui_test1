import 'package:flutter/material.dart';

class CurrenyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  final double order;

  final Color _blackcolor = const Color(0xFF1F2123);

  const CurrenyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -order * 10),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isInverted ? Colors.white : _blackcolor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: isInverted ? _blackcolor : Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          fontSize: 20,
                          color: isInverted ? _blackcolor : Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                            fontSize: 16,
                            color: isInverted
                                ? _blackcolor.withOpacity(0.7)
                                : Colors.white.withOpacity(0.7)),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.5,
                child: Transform.translate(
                  offset: const Offset(2, 10),
                  child: Icon(
                    icon,
                    size: 80,
                    color: isInverted ? _blackcolor : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
