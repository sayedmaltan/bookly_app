import 'package:bookly_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  var controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomTextFormField(
              focusedBorderColor: Colors.grey,
              suffixIcon: Icons.search,
              hintText: 'Search',
              keyboardType: TextInputType.text,
              isPassword: false,
              controller: controller,
              validator: (value) {
                return null;
              },
            ),
          ),

        ],
      ),
    );
  }
}
