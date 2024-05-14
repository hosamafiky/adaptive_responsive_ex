import 'package:adaptive_responsive_ex/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.image,
    required this.subtitle,
  });

  final String title, image, subtitle;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Card(
        elevation: 0.0,
        color: const Color(0xFFFAFAFA),
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(title, style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
