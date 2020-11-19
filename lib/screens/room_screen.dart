import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:stardrew_bundles/widgets/resource_card.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen(this.room);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(room.title)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView(
          children: [
            ...room.bundles.map((Bundle bundle) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Row(
                      children: [
                        Image.asset(bundle.image),
                        SizedBox(width: 4.0),
                        Text(
                          bundle.title,
                          style: TextStyle(fontSize: 32.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 216.0,
                    child: ListView.builder(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: bundle.resources.length,
                      itemBuilder: (context, index) {
                        return ChangeNotifierProvider.value(
                          value: bundle.resources[index],
                          child: ResourceCard(bundle.resources[index]),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 8.0)
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
