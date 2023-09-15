import 'package:coin_app/widgets/home_tabs/filter_bar.dart';
import 'package:coin_app/widgets/home_tabs/all_tab/list_coin_all.dart';
import 'package:flutter/material.dart';

class AllTab extends StatefulWidget {
  const AllTab({super.key});

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Stack(
        alignment: Alignment.center,
        children: [
          Positioned(child: ListCoin()),
          FilterBar(),
        ],
      ),
    );
  }
}
