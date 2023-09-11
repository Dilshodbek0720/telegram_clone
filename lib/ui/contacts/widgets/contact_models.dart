import 'package:telegram_clone/ui/utils/images/app_images.dart';

class ContactModel {
  final String contactImage;
  final String contactTitle;
  final String contactSubtitle;

  ContactModel(
      {required this.contactImage,
        required this.contactTitle,
        required this.contactSubtitle,
        });
}

List<ContactModel> contactsModel = [
  ContactModel(contactImage: AppImages.joshuaImage, contactTitle: "Joshua Lawrence", contactSubtitle: "online"),
  ContactModel(contactImage: AppImages.andrewImage, contactTitle: "Andrew Parker", contactSubtitle: "online"),
  ContactModel(contactImage: AppImages.martinImage, contactTitle: "Martin Randolph", contactSubtitle: "online"),
  ContactModel(contactImage: AppImages.kieronImage, contactTitle: "Kieron Dotson", contactSubtitle: "last seen 10 minutes ago"),
  ContactModel(contactImage: AppImages.zackImage, contactTitle: "Zack John", contactSubtitle: "last seen 25 minutes ago"),
  ContactModel(contactImage: AppImages.karenImage, contactTitle: "Karen Castillo", contactSubtitle: "last seen 1 hour ago"),
  ContactModel(contactImage: AppImages.jamieImage, contactTitle: "Jamie Franco", contactSubtitle: "last seen 2 hour ago"),
  ContactModel(contactImage: AppImages.maxiImage, contactTitle: "Maximillian Jacobson", contactSubtitle: "last seen 5 hour ago"),
  ContactModel(contactImage: AppImages.marthaImage, contactTitle: "Martha Craig", contactSubtitle: "last seen yesterday at 21:22"),
  ContactModel(contactImage: AppImages.tabithaImage, contactTitle: "Tabitha Potter", contactSubtitle: "last seen recently"),
  ContactModel(contactImage: AppImages.maisyImage, contactTitle: "Maisy Humphrey", contactSubtitle: "last seen recently")
];