import 'package:flutter/material.dart';

class ImageSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(
        'https://1.bp.blogspot.com/-0XUciN_Vl_o/XPcWu2f5cPI/AAAAAAAAA2E/BrFXjR1y7tsgedusx8Q8eOflI-6MHK2_ACLcBGAs/w1200-h630-p-k-no-nu/flutter.png',
      ),
    );
    return Column(children: [
      Image.asset('assets/images/sample.jpg'),
      Container(
        width: 100,
        child: Image.network(
            'https://1.bp.blogspot.com/-0XUciN_Vl_o/XPcWu2f5cPI/AAAAAAAAA2E/BrFXjR1y7tsgedusx8Q8eOflI-6MHK2_ACLcBGAs/w1200-h630-p-k-no-nu/flutter.png'),
      ),
      Image.asset('assets/images/tenor.gif'),
    ]);
  }
}
