import 'package:coin_app/models/dummy_crypto.dart';
import 'package:coin_app/widgets/search_dialog.dart';
import 'package:flutter/material.dart';

class AddAlert extends StatefulWidget {
  const AddAlert({super.key, required this.coinItem});
  final CoinItem coinItem;

  @override
  State<AddAlert> createState() => _AddAlertState();
}

class _AddAlertState extends State<AddAlert> {
  final _formKey = GlobalKey<FormState>();

  void _saveNote() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(5),
              width: 200,
              child: InkWell(
                highlightColor: Colors.grey,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const SearchDialog(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.menu_open,
                      color: Colors.black,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.coinItem.name,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            IconButton(
              iconSize: 40,
              icon: const Icon(Icons.add_circle_outline),
              onPressed: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 450,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.attach_money),
                              label: const Text(
                                'Lastest Price ',
                                style: TextStyle(fontSize: 15),
                              )),
                          Text(
                            widget.coinItem.lastPrice.toString(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  label: Text('Price')),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.percent),
                              label: const Text(
                                'Lastest Percent ',
                                style: TextStyle(fontSize: 15),
                              )),
                          Text(
                            widget.coinItem.changePercent.toString(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  label: Text('Percent')),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel')),
                      const SizedBox(
                        width: 8,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('Confirm')),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
