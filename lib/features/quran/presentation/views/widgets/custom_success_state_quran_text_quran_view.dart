import 'package:flutter/material.dart';
import 'package:misk/core/utils/padding/padding_with_child/symmetric_padding_with_child.dart';
import 'package:misk/core/utils/padding/padding_without_child/symmetric_padding_without_child.dart';
import 'package:quran/quran.dart' as quran;

class CustomSuccessStateQuranTextQuranView extends StatelessWidget {
  const CustomSuccessStateQuranTextQuranView({
    super.key,
    required this.surahNumber,
  });
  final int? surahNumber;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: SymmetricPaddingWithoutChild.horizontal15(context: context),
      sliver: SliverList.builder(
        itemCount: quran.getVerseCount(surahNumber!),
        itemBuilder: (context, index) {
          return SymmetricPaddingWithChild.vertical8(
            context: context,
            child: Text(
              quran.getVerse(surahNumber!, index + 1, verseEndSymbol: true),
              //surahNumber: to give this method any surah i want it(so you should take number the surah)
              //index + 1: to give the method number to all ayahs
              //verseEndSymbol: ask you do you want the symbol(۝ or ۩) in the end ayah, i tell it yes(true)
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
