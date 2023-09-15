import 'package:coin_app/widgets/home_tabs/all_tab/all_tab.dart';
import 'package:coin_app/widgets/home_tabs/top_tabs/top_tab.dart';
import 'package:coin_app/widgets/search_dialog.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    const List<Widget> tabs = <Widget>[
      AllTab(),
      TopTab(),
      AllTab(),
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    floating: true,
                    pinned: false,
                    snap: true,
                    backgroundColor: Colors.white,
                    title: Container(
                      alignment: Alignment.centerLeft,
                      child: TextButton.icon(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                              splashFactory: NoSplash.splashFactory),
                          onPressed: () => showDialog(
                                context: context,
                                builder: (context) => const SearchDialog(),
                              ),
                          icon: const Icon(Icons.search),
                          label: const Text('Search')),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: TabBar(
                          labelColor: Colors.blue.shade900,
                          unselectedLabelColor: Colors.grey.shade300,
                          indicatorWeight: 0.1,
                          indicatorColor:
                              Colors.transparent, //Colors.blue.shade800,
                          dividerColor: Colors.transparent,
                          splashBorderRadius: BorderRadius.circular(50),
                          overlayColor:
                              const MaterialStatePropertyAll(Colors.transparent),
                          isScrollable: true,
                          tabs: const [
                            Tab(
                              icon: Icon(
                                Icons.all_inbox,
                                size: 28,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.list,
                                size: 28,
                              ),
                            ),
                            Tab(
                              icon: Icon(
                                Icons.favorite,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ];
              },
              body: MediaQuery.removePadding(
                removeTop: true,
                removeBottom: true,
                context: context,
                child: const TabBarView(
                  children: tabs,
                ),
              ),
            ),
          )),
    );
  }
}
