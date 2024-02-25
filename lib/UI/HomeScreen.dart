import 'package:flutter/material.dart';
import 'package:mvvm/ViewModel/CoinViewModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CoinViewModel myViewModel = CoinViewModel();

  @override
  void initState() {
    myViewModel.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.builder(
        itemCount: myViewModel.coinList!.length,
        itemBuilder: (context, index) {
          return Text('${myViewModel.coinList![index].name}');
        },
      )),
    );
  }
}
