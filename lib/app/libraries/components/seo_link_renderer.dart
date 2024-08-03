import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class SeoLinkRenderer extends StatelessWidget {
  final String hrefSEO;
  final String textSEO;
  final String textButton;
  final Function? callback;

  const SeoLinkRenderer({
    super.key,
    this.hrefSEO = 'https://in-vinic.com/',
    this.textSEO = 'invinic',
    this.textButton = 'invinic',
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
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
