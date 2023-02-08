import 'package:flutter/material.dart';

class GeneralContainer extends StatefulWidget {
  final String header;
  final String smallHeader;
  final Widget child;

  const GeneralContainer({
    super.key,
    required this.header,
    required this.smallHeader,
    required this.child,
  });

  @override
  State<GeneralContainer> createState() => _GeneralContainerState();
}

class _GeneralContainerState extends State<GeneralContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.header,
          style: const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          widget.smallHeader,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 140,
          child: widget.child,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
