import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewColumnText extends StatelessWidget {
  const BestSellerListViewColumnText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Harry Potter and the Goblet of Fire',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(
                  fontFamily: kGTSectraFine
              ),
            ),
            Text(
              'J.K. Rowling',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w400),
            ),
            const Row(
              children: [
                Text(
                  '19.99 €',
                  style: Styles.textStyle20,
                ),
                Spacer(),
                Icon(
                  FontAwesomeIcons.solidStar,
                  size: 15,
                  color: Color(0xffFFDD4F),
                ),
                SizedBox(width: 7,),
                Text(
                  '4.8',
                  style: Styles.textStyle16,
                ),
                SizedBox(width: 9,),
                Text(
                  '(2390)',
                  style: Styles.textStyle14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}