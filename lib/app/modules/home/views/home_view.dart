import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:seo_renderer/renderers/link_renderer/link_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LinkRenderer(
          href: 'http://in-vinic.com/',
          text: 'invinic logo',
          child: InkWell(
            onTap: () {},
            hoverColor: Colors.white.withOpacity(1),
            splashColor: Colors.white.withOpacity(1),
            focusColor: Colors.white.withOpacity(1),
            child: Text('INVINIC_'),
          ),
        ),
        centerTitle: false,
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: LinkRenderer(
                href: 'http://in-vinic.com/',
                text: 'invinic logo',
                child: Text('Contact'),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text('Agents'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: TextRenderer(
          style: TextRendererStyle.paragraph,
          child: Text(
            'HomeView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
