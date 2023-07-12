import 'package:flutter/widgets.dart';
import 'package:just_english/ui/widgets/home_page_list/home_page_item.dart';

class HomePageList extends StatelessWidget {
  const HomePageList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, i) => HomePageListItem(),
        separatorBuilder: (context, i) => const SizedBox(
              height: 16,
            ),
        itemCount: 10);
  }
}
