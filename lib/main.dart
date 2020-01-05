// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:ews/Http/WebCredentials.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:ews/ews.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    final service = ExchangeService.withVersion(ExchangeVersion.Exchange2007_SP1)
      ..Url = Uri.parse("https://outlook.office365.com/ews/exchange.asmx")
      ..Credentials = WebCredentials("---USER_NAME---", "---USER_PASSWORD---", "---USER_DOMAIN---");


    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  // TODO Add build() method
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}