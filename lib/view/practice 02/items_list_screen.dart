import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/helper/widget/appbar_widget.dart';
import 'package:provider_state_management/provider/favriote_provider.dart';

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({super.key});

  @override
  State<ItemsListScreen> createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 230,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(child: Consumer<FavrioteProvider>(
                      builder: (_, value, child) {
                        return ListTile(
                          onTap: () {
                            value.clickFavriote(index);
                          },
                          title: Text(
                            "Item $index",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black54),
                          ),
                          trailing: value.favroiteList.contains(index)
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.teal,
                                )
                              : Icon(
                                  Icons.favorite_border,
                                  color: Colors.teal,
                                ),
                          leading: const Icon(
                            Icons.numbers,
                            color: Colors.black45,
                            size: 18,
                          ),
                        );
                      },
                    ));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
