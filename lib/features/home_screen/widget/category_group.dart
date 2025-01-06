import 'package:flutter/material.dart';
import 'package:quiki/features/home_screen/widget/svg_round_widgets.dart';
import 'package:quiki/gen/assets.gen.dart';

class CategoryGroup extends StatelessWidget {
  const CategoryGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgRoundWidgets(
          onTap: () {},
          label: 'Cakes',
          svgString: Assets.svgs.cakeCat,
        ),
        SvgRoundWidgets(
          onTap: () {},
          label: 'Gifts',
          svgString: Assets.svgs.giftsCat,
        ),
        SvgRoundWidgets(
          onTap: () {},
          label: 'Props',
          svgString: Assets.svgs.propCat,
        ),
        SvgRoundWidgets(
          onTap: () {},
          label: 'Beverages',
          svgString: Assets.svgs.beverageCat,
        ),
      ],
    );
  }
}
