import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ing = IngridientViewModel(
        name: 'Vodka',
        buttonText: 'Все коктейли с ромом',
        imageUrl:
            'https://mircocktails.ru/wp-content/uploads/2019/02/Martini-Byanko-11-1.jpg',
        description: 'Ром белый- крепкий спиртосодржещий напиток, '
            'получаемый путём дистилляции и выдержки продуктов '
            'сахарного тростника. Имеет сладкий вкус'
            ' и светлый оттенок.');

    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          actionsIconTheme: IconThemeData(color: Colors.black),
          color: Colors.transparent
        )
      ),
      home: IngridientPage(ing),
    );
  }
}

class IngridientPage extends StatelessWidget {
  const IngridientPage(
    this.viewModel, {
    Key key,
  }) : super(key: key);

  final IngridientViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
      floatingActionButton: _buildButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildBody(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(fit: StackFit.expand, children: [
      Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: (screenHeight / 2) + 56,
            child: Image.network(
              viewModel.imageUrl,
              fit: BoxFit.cover,
            )),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: screenHeight / 2,
            child: _buildDescriptionContainer(context)),
      ),
      Positioned(top: 0, right: 0, left: 0, child: _buildAppBar(context))
    ]);
  }

  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        splashRadius: 24,
        icon: Icon(Icons.arrow_back),
        onPressed: viewModel._share,
      ),
      actions: [
        IconButton(splashRadius: 24, icon: Icon(Icons.share), onPressed: () {})
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: CupertinoButton(
          color: Colors.white,
          onPressed: viewModel._showAll,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Text(
            viewModel.buttonText,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 50, 37, 25),
      decoration: BoxDecoration(
          color: Color(0xFF1A1927),
          borderRadius: BorderRadius.only(topRight: Radius.circular(56))),
      child: Text(
        viewModel.description,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class IngridientViewModel {
  IngridientViewModel(
      {this.name, this.imageUrl, this.description, this.buttonText});

  final String name;
  final String imageUrl;
  final String description;
  final String buttonText;

  VoidCallback _share() {}

  VoidCallback _showAll() {}
}
