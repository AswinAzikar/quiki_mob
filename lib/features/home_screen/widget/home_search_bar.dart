import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:quiki/routes/app_routes.dart';
import 'package:quiki/utils/size_utils.dart';

import '../../../constants/constant.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick();

        Navigator.of(context, rootNavigator: true)
            .pushNamed(AppRoute.searchScreen);
      },
      child: SearchBar(
        hintStyle: WidgetStatePropertyAll(TextStyle(fontSize: 14.h)),
        hintText: "Search for Cakes, Props and more",
        enabled: false,
        leading: Icon(
          LucideIcons.search,
          color: darkGreyColor,
        ),
      ),
    );
  }
}
