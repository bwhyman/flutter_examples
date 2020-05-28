import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterexamples/example26-network/models/githubmodel.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  GitHubModel github;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () => github.loadUser(context));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    github = Provider.of<GitHubModel>(context, listen: false);
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 260,
            primary: true,
            pinned: true,
            floating: true,
            snap: false,
            flexibleSpace: FlexBar(),
          )
        ];
      },
      body: ListView(
        children: <Widget>[
        Text('INFO')
        ],
      ),
    ));
  }
}

class FlexBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlexibleSpaceBar(
      background: Consumer<GitHubModel>(
        builder: (context, github, c) {
          User user = github.getUser();
          return Ink(
            color: Colors.black,
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 5),
                  height: 120,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: user.avatar_url == ''
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : CircleAvatar(
                              backgroundImage: NetworkImage('${user.avatar_url}'),
                              // backgroundImage: AssetImage('images/a.PNG'),
                              radius: 100,
                          ),
                  ),
                ),
                Center(
                  child: Text(
                    '${user.login}',
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                ),
                Center(
                  child: Text(
                    '${user.email}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/repository');
                        },
                        child: Column(
                          children: <Widget>[
                            Text(
                              '${user.public_repos}',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Repositories',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text('${user.followers}',
                              style: TextStyle(color: Colors.white)),
                          Text(
                            'Followers',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text('${user.following}',
                              style: TextStyle(color: Colors.white)),
                          Text(
                            'Following',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
