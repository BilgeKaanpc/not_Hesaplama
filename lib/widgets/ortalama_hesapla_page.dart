import 'package:flutter/material.dart';
import 'package:not_hesaplama/constants/app_constants.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              Sabitler.baslikText,
              style: Sabitler.baslikStyle,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child:_buildForm(),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: Text("form yeri"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Text("form yeri"),
              ),
            ),
          ],
        ));
  }

  Widget _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildTextFormField(){
    return TextFormField(
        decoration: InputDecoration(
          hintText: "Matematik",
          border: OutlineInputBorder(
            borderRadius: Sabitler.borderRadius,

          ),
          filled: true,
          fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3)
        ),
    );
  }
}
