import 'package:flutter/material.dart';

class PageStorageService {

  final PageStorageBucket bucket = PageStorageBucket();

  dynamic read(BuildContext context, Key _key) {
    return bucket.readState(context, identifier: ValueKey(_key));
  }

  write(BuildContext context,Key _key, dynamic data) {
    bucket.writeState(context, data, identifier: ValueKey(_key));
    return;
  }

}
