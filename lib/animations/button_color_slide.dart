import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/src/gestures/events.dart';

class ButtonColorSlide extends StatefulWidget {
  const ButtonColorSlide({super.key});

  @override
  State<ButtonColorSlide> createState() => _ButtonColorSlideState();
}

class _ButtonColorSlideState extends State<ButtonColorSlide> {
  Offset offset = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Scaffold(
        body:Stack(
          children: [
            Center(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                height: 100,width: 200,
                color: Colors.red,
              ),
            ),
             Transform.translate(
                offset: offset - Offset(10,10),
                child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    )),
              ),
          ],
        ),
      ),
    );
  }
}























class DummyWidget extends StatefulWidget {
  const DummyWidget({super.key});

  @override
  State<DummyWidget> createState() => _DummyWidgetState();
}

class _DummyWidgetState extends State<DummyWidget>
    with SingleTickerProviderStateMixin {
  StreamController<double> animationState = StreamController<double>();

  double width = 150, height = 70;

  @override
  void initState() {
    super.initState();
    animationState.add(0);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: MouseRegion(
              onEnter: (PointerEnterEvent s) {
                animationState.sink.add(width);
              },
              onExit: (PointerExitEvent s) {
                animationState.sink.add(0);
              },
              child: Stack(
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 10,
                    child: SizedBox(
                      width: width,
                      height: height,
                    ),
                  ),
                  StreamBuilder<double>(
                    stream: animationState.stream,
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<double> snapshot,
                    ) {
                      debugPrint('Width : ${snapshot.data}');

                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        width: snapshot.data,
                        height: height,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        margin: const EdgeInsets.all(5),
                        clipBehavior: Clip.hardEdge,
                      );

                      // return AnimatedSize(
                      //   duration: const Duration(milliseconds: 500),
                      //   curve: Curves.easeInOut,
                      //   child: ColoredBox(
                      //     color: Colors.blue,
                      //     child: SizedBox(
                      //       width: snapshot.data,
                      //       height: height,
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                  const Align(
                    child: Text(
                      'Something',
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
