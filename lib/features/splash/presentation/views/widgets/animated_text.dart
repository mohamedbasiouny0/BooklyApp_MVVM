import 'package:flutter/material.dart';
import 'package:test1/core/widgets/custom_text.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required AnimationController controller,
    required Animation<double> textOpacity,
    required Animation<Offset> textSlide,
  }) : _controller = controller,
       _textOpacity = textOpacity,
       _textSlide = textSlide;

  final AnimationController _controller;
  final Animation<double> _textOpacity;
  final Animation<Offset> _textSlide;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _textOpacity.value,
          child: SlideTransition(position: _textSlide, child: child),
        );
      },
      child: const CustomText(
        'Discover stories, Discover ideas.',
        textAlign: .center,
        fontSize: 15,
      ),
    );
  }
}
