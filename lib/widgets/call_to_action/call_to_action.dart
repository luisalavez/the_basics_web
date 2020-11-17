import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics_web/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:the_basics_web/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:the_basics_web/extensions/hover_extensions.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: CallToActionTableDesktop('Join Us'),
      mobile: CallToActionMobile('Join Us'),
    ).showCursorOnHover;
  }
}
