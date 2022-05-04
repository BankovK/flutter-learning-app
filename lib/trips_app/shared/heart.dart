import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;
  late Animation<double> _curve;
  bool isFavourite = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 400),
        vsync: this
    );
    _curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.slowMiddle
    );
    _colorAnimation = ColorTween(
      begin: Colors.grey,
      end: Colors.red
    ).animate(_curve);
    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
            tween: Tween<double>(begin: 30, end: 50),
            weight: 50
        ),
        TweenSequenceItem<double>(
            tween: Tween<double>(begin: 50, end: 30),
            weight: 50
        )
      ]
    ).animate(_curve);
    _controller.addListener(() {
      print(_controller.value);
      print(_colorAnimation.value);
    });
    _controller.addStatusListener((status) {
      print(status);
      setState(() {
        if (status == AnimationStatus.completed) {
          isFavourite = true;
        } else {
          isFavourite = false;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) {
        return IconButton(
          icon: Icon(
            Icons.favorite,
            color: _colorAnimation.value,
            size: _sizeAnimation.value,
          ),
          onPressed: () {
            isFavourite
              ? _controller.reverse()
              : _controller.forward();
          },
        );
      },
      animation: _controller,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
