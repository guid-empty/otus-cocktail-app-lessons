import 'package:flutter/cupertino.dart';

class PrimaryLayers extends StatelessWidget {
  final Widget child;

  PrimaryLayers({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 111),
      child: child,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF0E0D13),
            const Color(0xFF0B0B12),
          ],
          tileMode: TileMode.repeated,
        ),
      ),
    );
  }
}