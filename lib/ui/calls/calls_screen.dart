import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_clone/ui/calls/widgets/call_item.dart';
import 'package:telegram_clone/ui/calls/widgets/call_models.dart';
import 'package:telegram_clone/ui/utils/images/app_images.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 160,
          height: 32,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            children: [
              Container(
                height: 28,
                  width: 76,
                  decoration: BoxDecoration(
                      color: Theme.of(context).appBarTheme.backgroundColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(child: Text("All", style: Theme.of(context).textTheme.titleLarge,))),
              SizedBox(
                  height: 28,
                  width: 76,
                  child: Center(child: Text("Missed", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w400),)))
            ],
          ),
        ),
        centerTitle: true,
        leading: TextButton(onPressed: (){ }, child: Text("Edit", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 17, fontWeight: FontWeight.w400),)),
        actions: [
          IconButton(onPressed: (){ }, icon: SizedBox(height: 22, width: 22, child: SvgPicture.asset(AppImages.callIcon),)),
          const SizedBox(width: 10,)
        ],
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).primaryColorDark
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: ListView(
        children: [
          ...List.generate(callsModel.length, (index) => CallItem(callModel: callsModel[index]))
        ],
      ),
    );
  }
}
