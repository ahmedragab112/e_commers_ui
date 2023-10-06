import 'package:e_commers/model/theme.dart';
import 'package:flutter/material.dart';


class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Colors.white),
      child: Row(
        children: [
          Text(
            'search here',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: const Color(0xffa9a8a9)),
          ),
          const Spacer(),
          Icon(Icons.camera_alt_outlined, color: MyTheme.primryColor)
        ],
      ),
    );
  }
}
