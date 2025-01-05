import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:quiki/constants/constant.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: paddingLarge),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Padding(
        padding: commonPadding,
        child: Column(
          children: [
            SearchBar(
              autoFocus: true,
              hintText: "Search for Cakes, Props and more",
              enabled: true,
              leading: Icon(
                LucideIcons.search,
                color: darkGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
