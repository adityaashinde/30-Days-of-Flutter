import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatelessWidget {
  final Item catalog;
  const DetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: Vx.mH8,
        children: [
          "\$${catalog.price}".text.bold.xl4.red800.make(),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  MyTheme.darkBluishColor,
                ),
                shape: MaterialStateProperty.all(
                  const StadiumBorder(),
                )),
            child: "Buy".text.make(),
          ).wh(100, 40)
        ],
      ).p16(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).p32(),
            Expanded(
                child: VxArc(
              height: 8.0,
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    catalog.name.text.xl
                        .color(MyTheme.darkBluishColor)
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                    10.heightBox,
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
