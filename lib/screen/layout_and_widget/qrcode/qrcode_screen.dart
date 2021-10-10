import 'package:flutter/material.dart';

import '../../../constanct.dart';
import 'components/body.dart';

class QrcodeScreen extends StatefulWidget {
  const QrcodeScreen({ Key? key }) : super(key: key);

  @override
  _QrcodeScreenState createState() => _QrcodeScreenState();
}

class _QrcodeScreenState extends State<QrcodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(kQrcode),centerTitle: true,backgroundColor: kPrimaryColor,),
      body: Body(),
    );
  }
}