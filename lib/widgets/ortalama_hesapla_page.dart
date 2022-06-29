import 'package:flutter/material.dart';
import 'package:not_hesaplama/constants/app_constants.dart';
import 'package:not_hesaplama/data/data_helper.dart';
import 'package:not_hesaplama/widgets/ortalama_goster.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({Key? key}) : super(key: key);

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaPageState();
}

class _OrtalamaHesaplaPageState extends State<OrtalamaHesaplaPage> {
  var formKey = GlobalKey<FormState>();

  double secilen = 4;
  double secilenKredi = 4;

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
                  child: _buildForm(),
                ),
                Expanded(
                    child: OrtalamaGoster(
                  dersSayisi: 5,
                  ortalama: 2.54,
                )),
              ],
            ),
            SizedBox(
              height: 5,
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
          Padding(
            padding: Sabitler.yatayPadding8,
            child: _buildTextFormField(),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: Sabitler.yatayPadding8,
                child: _buildHarfler(),
              ),
              Padding(
                padding: Sabitler.yatayPadding8,
                child: _buildKrediler(),
              ),
              Padding(
                padding: Sabitler.yatayPadding8,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_sharp),
                  color: Sabitler.anaRenk,
                  iconSize: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildHarfler() {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
          value: secilen,
          elevation: 16,
          iconEnabledColor: Sabitler.anaRenk.shade200,
          onChanged: (deger) {
            setState(() {
              secilen = deger!;
            });
          },
          underline: Container(),
          items: DataHelper.tumDerslerinHarfleri()),
    );
  }

  _buildKrediler() {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<double>(
          value: secilenKredi,
          elevation: 16,
          iconEnabledColor: Sabitler.anaRenk.shade200,
          onChanged: (deger) {
            setState(() {
              secilenKredi = deger!;
            });
          },
          underline: Container(),
          items: DataHelper.tumKrediler()),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: "Matematik",
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: Sabitler.borderRadius,
          ),
          filled: true,
          fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3)),
    );
  }
}
