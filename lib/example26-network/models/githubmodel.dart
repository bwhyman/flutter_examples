import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class User {
  String login;
  String avatar_url;
  String repos_url;
  String email;
  int public_repos;
  int followers;
  int following;

  User({
    this.login = '',
    this.avatar_url = '',
    this.repos_url = '',
    this.email = '',
    this.public_repos = 0,
    this.followers = 0,
    this.following = 0,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        login: json['login'],
        avatar_url: json['avatar_url'],
        repos_url: json['repos_url'],
        email: json['email'],
        public_repos: json['public_repos'],
        followers: json['followers'],
        following: json['following']);
  }
}

class Repository {
  String name;
  String language;
  int stargazers_count;
  int forks_count;

  Repository(
      {this.name = '',
      this.language = '',
      this.stargazers_count = 0,
      this.forks_count = 0});

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
      name: json['name'],
      language: json['language'],
      stargazers_count: json['stargazers_count'],
      forks_count: json['forks_count'],
    );
  }
}

class GitHubModel with ChangeNotifier {
  User _user = User();
  List<Repository> _repositories;

  loadUser(BuildContext c) async {
    try {
      Response resp = await get("http://114.115.206.11:8080/api/users/bwhyman");
      _user = User.fromJson(json.decode(resp.body));
      notifyListeners();
    } catch (e) {
      print(e);
      showDialog(context: c, child: MyAlertDialog());
    }
  }

  User getUser() {
    return _user;
  }

  loadRepositories(BuildContext c) async {
    try {
      Response resp = await get(_user.repos_url);
      // [{}, {}]
      List<dynamic> body = json.decode(resp.body);
      _repositories = body.map((json) => Repository.fromJson(json)).toList();
      notifyListeners();
    } catch (e) {
      //print(e);
      showDialog(context: c, child: MyAlertDialog());
    }
  }

  List<Repository> listRepositories() {
    return _repositories;
  }
}

class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      content: Text('网络异常，请稍后尝试.'),
      elevation: 24,
    );
  }
}
