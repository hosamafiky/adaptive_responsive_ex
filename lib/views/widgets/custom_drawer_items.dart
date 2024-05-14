import 'package:adaptive_responsive_ex/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'custom_drawer_list_item.dart';

class CustomDrawerItems extends StatefulWidget {
  const CustomDrawerItems({super.key});

  @override
  State<CustomDrawerItems> createState() => _CustomDrawerItemsState();
}

class _CustomDrawerItemsState extends State<CustomDrawerItems> {
  int selectedIndex = 0;
  final List<DrawerItemModel> items = <DrawerItemModel>[
    const DrawerItemModel(
      title: 'Dashboard',
      icon: AppAssets.imagesDashboard,
    ),
    const DrawerItemModel(
      title: 'My Transactions',
      icon: AppAssets.imagesMyTransctions,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      icon: AppAssets.imagesStatistics,
    ),
    const DrawerItemModel(
      title: 'Wallet Account',
      icon: AppAssets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      icon: AppAssets.imagesMyInvestments,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: items.length,
      itemBuilder: (context, index) => CustomDrawerListItem(
        onTap: () {
          if (selectedIndex == index) return;
          setState(() {
            selectedIndex = index;
          });
        },
        item: items[index],
        isActive: index == selectedIndex,
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
