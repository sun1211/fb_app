import 'package:fb_app/models/data.dart';
import 'package:fb_app/screen/detail/components/body.dart';
import 'package:fb_app/screen/detail/components/bottom.dart';
import 'package:fb_app/size_config.dart';
import 'package:flutter/material.dart';

import 'components/app_bar.dart';

class DetailScreen extends StatelessWidget {
  final Message message;
  const DetailScreen({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context, message),
      body: Body(),
      bottomSheet: getBottom(context),
    );
  }
}
