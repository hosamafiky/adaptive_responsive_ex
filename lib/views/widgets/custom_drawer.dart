import 'package:adaptive_responsive_ex/core/utils/app_assets.dart';
import 'package:adaptive_responsive_ex/models/drawer_item_model.dart';
import 'package:adaptive_responsive_ex/views/widgets/custom_drawer_list_item.dart';
import 'package:adaptive_responsive_ex/views/widgets/user_info_listile.dart';
import 'package:flutter/material.dart';

import 'custom_drawer_items.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          const UserInfoListTile(
            title: 'John Doe',
            image: AppAssets.imagesAvatar3,
            subtitle: 'demo@gmail.com',
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const CustomDrawerItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Spacer(),
                ...[
                  const DrawerItemModel(title: "Setting System", icon: AppAssets.imagesSettings),
                  const DrawerItemModel(title: "Logout account", icon: AppAssets.imagesLogout),
                ]
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CustomDrawerListItem(
                          item: item,
                          onTap: () {},
                        ),
                      ),
                    )
                    .toList(),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
