import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_action_button.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomRowAction extends StatelessWidget {
  const CustomRowAction({
    super.key, required this.bookModel,
  });
 final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Opacity(
        opacity: 0.9,
        child: Row(
          children: [
            CustomActionButton(
              backgroundColor: Colors.white,
              text: 'Free',
              borderRadiusGeometry: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              textStyle: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500, color: Colors.black), onPressed: () {  },
            ),
            CustomActionButton(
              onPressed:() async {
                final Uri url = Uri.parse(bookModel.volumeInfo?.previewLink??'');
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
              },
              backgroundColor: Color(0xffEF8262),
              text: 'Preview',
              borderRadiusGeometry: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              textStyle: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
