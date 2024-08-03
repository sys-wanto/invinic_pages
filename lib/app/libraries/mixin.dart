import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class Mixin {
  Mixin._();
  LinkRenderer buttonRenderer(
      String hrefSEO, String textSEO, String textButton, Function? callback) {
    return LinkRenderer(
      href: hrefSEO,
      text: textSEO,
      child: InkWell(
        onTap: () => callback,
        hoverColor: Colors.white.withOpacity(1),
        splashColor: Colors.white.withOpacity(1),
        focusColor: Colors.white.withOpacity(1),
        child: Text(textButton),
      ),
    );
  }
}
