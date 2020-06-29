import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ihm/EditProfile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'constants.dart';
import 'widgets/profile_list_item.dart';


class Langue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    return Scaffold(
      body: Container(
        child: Text('langue'),
      ),
    );
    }
    }