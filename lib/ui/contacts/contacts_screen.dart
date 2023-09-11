import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_clone/ui/contacts/widgets/contact_item.dart';
import 'package:telegram_clone/ui/contacts/widgets/contact_models.dart';
import 'package:telegram_clone/ui/utils/images/app_images.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts", style: Theme.of(context).textTheme.titleLarge,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){ }, icon: const Icon(Icons.add,))
        ],
      ),
      body: ListView(
        children: [
          ListTile(leading: const Icon(Icons.location_on_outlined),
            title: Text("Add People Nearby", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 17, fontWeight: FontWeight.w400),),
          ),
          ListTile(leading: SizedBox(height: 24, width: 24, child: SvgPicture.asset(AppImages.inviteIcon),),
            title: Text("Add People Nearby", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 17, fontWeight: FontWeight.w400),),
          ),
          ...List.generate(contactsModel.length, (index) => ContactItem(contactTitle: contactsModel[index].contactTitle, contactSubtitle: contactsModel[index].contactSubtitle, contactImage: contactsModel[index].contactImage)),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}
