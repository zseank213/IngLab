import 'package:flutter/material.dart';
import 'package:inglab/lib.dart';

class ContactCardWidget extends StatelessWidget {
  final String image;
  final String name;
  final String email;
  final String searchText;

  const ContactCardWidget({
    super.key,
    required this.name,
    required this.email,
    required this.searchText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final search = searchText.toLowerCase();
    final text = name;
    final matches = search.allMatches(text.toLowerCase()).toList();
    final spans = <TextSpan>[];

    if (matches.isEmpty) {
      spans.add(TextSpan(text: text));
    } else {
      for (var i = 0; i < matches.length; i++) {
        final strStart = i == 0 ? 0 : matches[i - 1].end;
        final match = matches[i];
        spans.add(
          TextSpan(
            text: text.substring(
              strStart,
              match.start,
            ),
          ),
        );
        spans.add(
          TextSpan(
            text: text.substring(
              match.start,
              match.end,
            ),
            style: const TextStyle(color: Colors.blue),
          ),
        );
      }
      spans.add(TextSpan(text: text.substring(matches.last.end)));
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Card(
                color: profileBackgroundColor,
                shape: const StadiumBorder(
                  side: BorderSide(color: Colors.white, width: 2.0),
                ),
                child: Center(
                  child: Text(
                    image,
                    style: textNormal(color: neutral30, isBold: true),
                  ),
                ),
              ),
            ),
            AppDimens.horizontalSpace12,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                    children: List.generate(
                      spans.length,
                      (index) => spans[index],
                    ),
                  ),
                ),
                AppDimens.verticalSpace6,
                Text(
                  email,
                  style: textNormal(color: neutral80),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
