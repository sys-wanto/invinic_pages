import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:invinic/app/modules/agents/views/agents_view.dart';
import 'package:invinic/app/modules/contact/views/contact_view.dart';
import 'package:invinic/app/modules/portofolio/views/portofolio_view.dart';
import 'package:seo/html/seo_widget.dart';

class Mixin {
  Widget buttonRenderer(String hrefSEO, String textSEO, String textButton,
      VoidCallback callback, double fontSize) {
    return Seo.link(
      href: hrefSEO,
      anchor: textSEO,
      child: InkWell(
        onTap: callback,
        hoverColor: Colors.white.withOpacity(0),
        splashColor: Colors.white.withOpacity(0),
        focusColor: Colors.white.withOpacity(0),
        highlightColor: Colors.white.withOpacity(0),
        child: Text(
          textButton,
          style: TextStyle(
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
