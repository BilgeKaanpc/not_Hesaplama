import 'package:flutter/material.dart';
import 'package:not_hesaplama/constants/app_constants.dart';
class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(Sabitler.baslikText,style: Sabitler.baslikStyle,),
        ),
      ),
      body: Center(
        child: Text("selam"),
      ),
    );
  }
}
