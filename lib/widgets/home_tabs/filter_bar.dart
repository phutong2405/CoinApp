import 'package:flutter/material.dart';

class FilterBar extends StatefulWidget {
  const FilterBar({
    super.key,
  });
  

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15,
      child: Container(
        width: 300,
        decoration: BoxDecoration(
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
          children: <Widget>[
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.sort),
                label: const Text(
                  'Sort by Change',
                  style: TextStyle(fontSize: 12),
                )),
            const Spacer(),
            Container(height: 40, width: 1, color: Colors.grey.withOpacity(0.05),),
            const Spacer(),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.sort_rounded),
                label: const Text(
                  'Sort by Price',
                  style: TextStyle(fontSize: 12),
                )),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
