// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:startup_namer/src/constants/app.constants.dart';
import 'package:startup_namer/src/screens/tabs.screen.dart';

void main() => runApp(const FriendlyChatApp());

class FriendlyChatApp extends StatelessWidget {
  const FriendlyChatApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: APP_NAME,
      home: TabScreen(),
    );
  }
}
