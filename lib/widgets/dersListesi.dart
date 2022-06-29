import 'package:flutter/material.dart';
import 'package:not_hesaplama/constants/app_constants.dart';
import 'package:not_hesaplama/data/data_helper.dart';

import '../model/model/ders.dart';

class DersListesi extends StatefulWidget {
  final Function onDismiss;
  const DersListesi({required this.onDismiss,Key? key}) : super(key: key);

  @override
  State<DersListesi> createState() => _DersListesiState();
}

class _DersListesiState extends State<DersListesi> {
  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenenDersler;
    return tumDersler.length > 0
        ? ListView.builder(
            itemCount: tumDersler.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (a){
                  widget.onDismiss(index);
                  setState((){

                  });
                },
                direction: DismissDirection.startToEnd,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    child: ListTile(
                      title: Text(tumDersler[index].ad),
                      leading: CircleAvatar(
                        backgroundColor: Sabitler.anaRenk,
                        child: Text(
                          (tumDersler[index].harfDegeri *
                                  tumDersler[index].krediDegeri)
                              .toStringAsFixed(2),
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      subtitle: Text(
                          '${tumDersler[index].krediDegeri} Kredi, Not değeri: ${tumDersler[index].harfDegeri}'),
                    ),
                  ),
                ),
              );
            })
        : Container(
            child: Center(
                child: Text(
              "Lütfen Ders Ekleyin",
              style: Sabitler.baslikStyle,
            )),
          );
  }
}
