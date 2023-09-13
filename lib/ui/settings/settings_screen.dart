import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telegram_clone/ui/settings/wdgets/setting_item.dart';
import 'package:telegram_clone/ui/utils/colors/app_colors.dart';
import 'package:telegram_clone/ui/utils/images/app_images.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).primaryColorDark),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Theme.of(context).iconTheme.color),
              ))
        ],
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            color: Theme.of(context).primaryColorDark,
            height: 92,
            child: ListTile(
              leading: SizedBox(
                height: 66,
                width: 66,
                child: Image.asset(
                  AppImages.profile,
                  fit: BoxFit.fitHeight,
                ),
              ),
              title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    "Jacob W.",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                  )),
              subtitle: Text(
                "+1 202 555 0147\n@jacob_d",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.c7E7E82),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.c7E7E82,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          SettingItem(icon: AppImages.designIcon, title: "Jacob Design"),
          const SpaceItem(),
          Container(
            height: 50,
            color: Theme.of(context).primaryColorDark,
            child: Center(
              child: ListTile(
                leading: SizedBox(
                  height: 29,
                  width: 29,
                  child: Icon(Icons.add, color: Theme.of(context).appBarTheme.iconTheme?.color,),
                ),
                title: Text(
                  "Add Account",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).iconTheme.color),
                ),
              ),
            ),
          ),
          const SizedBox(height: 35,),
          SettingItem(icon: AppImages.savedIcon, title: "Saved Messages"),
          const SpaceItem(),
          SettingItem(icon: AppImages.recentIcon, title: "Recent Calls"),
          const SpaceItem(),
          SettingItem(icon: AppImages.stickerIcon, title: "Stickers"),
          const SizedBox(height: 35,),
          SettingItem(icon: AppImages.soundsIcon, title: "Notifications and Sounds"),
          const SpaceItem(),
          SettingItem(icon: AppImages.securityIcon, title: "Privacy and Security"),
          const SpaceItem(),
          SettingItem(icon: AppImages.dataIcon, title: "Data and Storage"),
          const SpaceItem(),
          SettingItem(icon: AppImages.appearanceIcon, title: "Appearance"),
          const SizedBox(height: 5,)
        ],
      ),
    );
  }
}