import 'package:flutter/material.dart';
import 'package:u2act1/pantallas0412/panel0412/widgets0412/item_perfume.dart';

class PanelPantalla0412 extends StatelessWidget {
  const PanelPantalla0412({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3f3f3f),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.white),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 25),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/Dereck1016/img_perfumeria/main/logo.png"),
              ),
            ),
          ],
          title: const Text('Perfumeria Sandoval0412',
              style: TextStyle(color: Color(0xffffffff))),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: "¿Qué quieres ver?",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.blue)),
              ),
            ),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/Dereck1016/img_perfumeria/main/ima20.png"))),
            ),
            ListTile(
              title: Text("Mejores Perfumes"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: Icon(Icons.filter_list_outlined),
            ),
            Expanded(
                child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const ItemPerfume()],
            )),
          ],
        ));
  }
}
