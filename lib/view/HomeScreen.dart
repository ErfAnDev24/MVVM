import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm/viewModel/CoinListViewModel.dart';
import 'package:provider/provider.dart';

class HomeScren extends StatefulWidget {
  const HomeScren({super.key});

  @override
  State<HomeScren> createState() => _HomeScrenState();
}

class _HomeScrenState extends State<HomeScren> {
  CoinListViewModel viewModel = GetIt.I.get<CoinListViewModel>();

  @override
  void initState() {
    viewModel.loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ChangeNotifierProvider(
        create: (context) => viewModel,
        child: Consumer<CoinListViewModel>(
          builder: (context, value, child) {
            return ListView.builder(
              itemCount: value.coinList.length,
              itemBuilder: (context, index) {
                return Text('${value.coinList[index].name}');
              },
            );
          },
        ),
      )),
    );
  }
}
