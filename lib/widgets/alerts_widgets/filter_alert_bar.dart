import 'package:flutter/material.dart';

import '../../models/dummy_alerts.dart';

class FilterAlertBar extends StatefulWidget {
  const FilterAlertBar({super.key});

  @override
  State<FilterAlertBar> createState() => _FilterAlertBarState();
}

class _FilterAlertBarState extends State<FilterAlertBar> {
  @override
  Widget build(BuildContext context) {
    int getCount(List<AlertItem> alertList, bool isComplete) {
      if (isComplete) {
        var tmp = alertList.where((item) => item.isComplete == true).toList();
        return tmp.length;
      } else {
        var tmp = alertList.where((item) => item.isComplete == false).toList();
        return tmp.length;
      }
    }

    return Positioned(
      bottom: 15,
      child: Container(
        width: 320,
        decoration: BoxDecoration(
          // border: Border.all(width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(2, 5),
            ),
          ],
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.check_box_outlined),
              label: Text('Reached:  ${getCount(alertList, true).toString()}'),
            ),
            const Spacer(),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.check_box_outline_blank_sharp),
                label: Text(
                    'Not Reached:  ${getCount(alertList, false).toString()}')),
            // TextButton.icon(
            //     onPressed: () {},
            //     icon: const Icon(Icons.reorder),
            //     label: const Text('All')),
          ],
        ),
      ),
    );
  }
}
