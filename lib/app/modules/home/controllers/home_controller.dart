import 'package:animated_svg/animated_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  late GlobalKey key1;
  late GlobalKey key2;
  late GlobalKey key3;
  late GlobalKey key4;
  late GlobalKey key5;
  late GlobalKey key6;
  late GlobalKey key7;

  var scrollController = ScrollController();
  var svg1Controller = AnimatedSvgController();
  Rx<int> scrollPosition = 1.obs;
  final count = 0.obs;
  Rx<bool> isScrolling = false.obs;

  @override
  void onInit() {
    key1 = GlobalKey();
    key2 = GlobalKey();
    key3 = GlobalKey();
    key4 = GlobalKey();
    key5 = GlobalKey();
    key6 = GlobalKey();
    key7 = GlobalKey();
    super.onInit();
    scrollController.addListener(_checkIfInView);
  }

  void fabAction() async {
    if (isScrolling.value) return;
    isScrolling(true);
    if (scrollPosition.value == 1) {
      await Scrollable.ensureVisible(
        key2.currentContext!,
        curve: Easing.legacy,
        duration: Durations.extralong1,
      );
      scrollPosition.value = 2;
    } else if (scrollPosition.value == 2) {
      await Scrollable.ensureVisible(
        key3.currentContext!,
        curve: Easing.legacy,
        duration: Durations.extralong1,
      );
      scrollPosition.value = 3;
    } else if (scrollPosition.value == 3) {
      await Scrollable.ensureVisible(
        key4.currentContext!,
        curve: Easing.legacy,
        duration: Durations.extralong1,
      );
      scrollPosition.value = 4;
    } else if (scrollPosition.value == 4) {
      await Scrollable.ensureVisible(
        key5.currentContext!,
        curve: Easing.legacy,
        duration: Durations.extralong1,
      );
      scrollPosition.value = 5;
    } else if (scrollPosition.value == 5) {
      await Scrollable.ensureVisible(
        key6.currentContext!,
        curve: Easing.legacy,
        duration: Durations.extralong1,
      );
      scrollPosition.value = 6;
    } else if (scrollPosition.value == 6) {
      await Scrollable.ensureVisible(
        key7.currentContext!,
        curve: Easing.legacy,
        duration: Durations.extralong1,
      );
      scrollPosition.value = 7;
    } else {
      await Scrollable.ensureVisible(
        key1.currentContext!,
        curve: Easing.legacy,
        duration: Durations.extralong1,
      );
      scrollPosition.value = 1;
    }
    isScrolling(false);
    print(scrollPosition.value);
  }

  void _checkIfInView() {
    // Mendapatkan posisi dari key1 dan key2
    final key1Context = key1.currentContext;
    final key2Context = key2.currentContext;
    final key3Context = key3.currentContext;
    final key4Context = key4.currentContext;
    final key5Context = key5.currentContext;
    final key6Context = key6.currentContext;
    final key7Context = key7.currentContext;

    if (key1Context != null &&
        key2Context != null &&
        key3Context != null &&
        key4Context != null &&
        key5Context != null &&
        key6Context != null &&
        key7Context != null) {
      final key1Box = key1Context.findRenderObject() as RenderBox;
      final key2Box = key2Context.findRenderObject() as RenderBox;
      final key3Box = key3Context.findRenderObject() as RenderBox;
      final key4Box = key4Context.findRenderObject() as RenderBox;
      final key5Box = key5Context.findRenderObject() as RenderBox;
      final key6Box = key6Context.findRenderObject() as RenderBox;
      final key7Box = key7Context.findRenderObject() as RenderBox;

      final key1Position = key1Box.localToGlobal(Offset.zero);
      final key2Position = key2Box.localToGlobal(Offset.zero);
      final key3Position = key3Box.localToGlobal(Offset.zero);
      final key4Position = key4Box.localToGlobal(Offset.zero);
      final key5Position = key5Box.localToGlobal(Offset.zero);
      final key6Position = key6Box.localToGlobal(Offset.zero);
      final key7Position = key7Box.localToGlobal(Offset.zero);

      // Mendapatkan tinggi layar dan posisi scroll
      final screenHeight = Get.height;
      final scrollOffset = scrollController.offset;

      // Cek apakah sebagian atau seluruh key1 berada di layar
      bool key1InView = (key1Position.dy >= scrollOffset &&
              key1Position.dy < scrollOffset + screenHeight) ||
          (key1Position.dy + key1Box.size.height > scrollOffset &&
              key1Position.dy + key1Box.size.height <
                  scrollOffset + screenHeight) ||
          (key1Position.dy <= scrollOffset &&
              key1Position.dy + key1Box.size.height >=
                  scrollOffset + screenHeight);

      // Cek apakah sebagian atau seluruh key2 berada di layar
      bool key2InView = (key2Position.dy >= scrollOffset &&
              key2Position.dy < scrollOffset + screenHeight) ||
          (key2Position.dy + key2Box.size.height > scrollOffset &&
              key2Position.dy + key2Box.size.height <
                  scrollOffset + screenHeight) ||
          (key2Position.dy <= scrollOffset &&
              key2Position.dy + key2Box.size.height >=
                  scrollOffset + screenHeight);

      bool key3InView = (key3Position.dy >= scrollOffset &&
              key3Position.dy < scrollOffset + screenHeight) ||
          (key3Position.dy + key3Box.size.height > scrollOffset &&
              key3Position.dy + key3Box.size.height <
                  scrollOffset + screenHeight) ||
          (key3Position.dy <= scrollOffset &&
              key3Position.dy + key3Box.size.height >=
                  scrollOffset + screenHeight);

      bool key4InView = (key4Position.dy >= scrollOffset &&
              key4Position.dy < scrollOffset + screenHeight) ||
          (key4Position.dy + key4Box.size.height > scrollOffset &&
              key4Position.dy + key4Box.size.height <
                  scrollOffset + screenHeight) ||
          (key4Position.dy <= scrollOffset &&
              key4Position.dy + key4Box.size.height >=
                  scrollOffset + screenHeight);

      bool key5InView = (key5Position.dy >= scrollOffset &&
              key5Position.dy < scrollOffset + screenHeight) ||
          (key5Position.dy + key5Box.size.height > scrollOffset &&
              key5Position.dy + key5Box.size.height <
                  scrollOffset + screenHeight) ||
          (key5Position.dy <= scrollOffset &&
              key5Position.dy + key5Box.size.height >=
                  scrollOffset + screenHeight);

      bool key6InView = (key6Position.dy >= scrollOffset &&
              key6Position.dy < scrollOffset + screenHeight) ||
          (key6Position.dy + key6Box.size.height > scrollOffset &&
              key6Position.dy + key6Box.size.height <
                  scrollOffset + screenHeight) ||
          (key6Position.dy <= scrollOffset &&
              key6Position.dy + key6Box.size.height >=
                  scrollOffset + screenHeight);

      bool key7InView = (key7Position.dy >= scrollOffset &&
              key7Position.dy < scrollOffset + screenHeight) ||
          (key7Position.dy + key7Box.size.height > scrollOffset &&
              key7Position.dy + key7Box.size.height <
                  scrollOffset + screenHeight) ||
          (key7Position.dy <= scrollOffset &&
              key7Position.dy + key7Box.size.height >=
                  scrollOffset + screenHeight);

      if (key1InView) {
        scrollPosition.value = 1;
      } else if (key2InView) {
        scrollPosition.value = 2;
      } else if (key3InView) {
        scrollPosition.value = 3;
      } else if (key4InView) {
        scrollPosition.value = 4;
      } else if (key5InView) {
        scrollPosition.value = 5;
      } else if (key6InView) {
        scrollPosition.value = 6;
      } else if (key7InView) {
        scrollPosition.value = 7;
      } else {
        scrollPosition.value = 1;
      }
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    print('terpanggil');
    super.onClose();
  }

  void increment() => count.value++;
}
