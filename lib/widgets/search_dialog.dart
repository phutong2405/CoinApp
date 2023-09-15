import 'package:coin_app/models/dummy_crypto.dart';
import 'package:flutter/material.dart';

class SearchDialog extends StatefulWidget {
  const SearchDialog({super.key});

  @override
  State<SearchDialog> createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 600,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: const Column(
          children: [
            TextField(
              decoration: InputDecoration(icon: Icon(Icons.search)),
            ),
            // ListView.builder(
            //   itemCount: listCoin.length,
            //   itemBuilder: (context, index) {
            //     return ListTile(
            //       leading: Icon(listCoin[index].coinIcon),
            //       title: Text(listCoin[index].fullname),
            //       trailing: Text(listCoin[index].name),
            //     );
            //   },
            // )
          ],
        ),
      ),
    );
  }
}

    // padding: const EdgeInsets.all(10),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(20),
    //     color: Colors.white,
    //   ),
    //   child: Column(
    //     children: [
    //       TextField(),
    //       ListView.builder(
    //         itemCount: listCoin.length,
    //         itemBuilder: (context, index) {
    //           return ListTile(
    //             leading: Icon(listCoin[index].coinIcon),
    //             title: Text(listCoin[index].fullname),
    //             trailing: Text(listCoin[index].name),
    //           );
    //         },
    //       )
    //     ],
    //   ),