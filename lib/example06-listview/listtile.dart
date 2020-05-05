import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: MyListTitle(),
    );
  }
}

class MyListTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        _buildListTile('CineArts at the Empire', 'CineArts at the Empire',
            Icon(Icons.theaters, color: Colors.red,), context),
        _buildListTile('The Castro Theater', '429 Castro St',
            Icon(Icons.theaters), context),
        _buildListTile('Alamo Drafthouse Cinema', '2550 Mission St',
            Icon(Icons.theaters), context),
        _buildListTile(
            'Roxie Theater', '3117 16th St', Icon(Icons.theaters), context),
        Divider(),
        _buildListTile('Kescaped_code#39;s Kitchen', '757 Monterey Blvd',
            Icon(Icons.restaurant), context,
            trailing: Icon(Icons.more_vert)),
        _buildListTile('Emmyescaped_code#39;s Restaurant', '1923 Ocean Ave',
            Icon(Icons.restaurant), context,
            trailing: Icon(Icons.more_vert)),
      ],
    );
  }

  ListTile _buildListTile(
      String title, String subTitle, Icon icon, BuildContext context,
      {Icon trailing}) {
    return ListTile(
      leading: icon,
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: trailing,
      onTap: () {},
    );
  }
}
