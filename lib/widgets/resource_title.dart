import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:provider/provider.dart';

class ResourceTitle extends StatelessWidget {
  const ResourceTitle({
    @required this.bundle,
    @required this.room,
    @required this.isBunleDone,
  });

  final Bundle bundle;
  final Room room;
  final bool isBunleDone;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: -4),
      leading: Image.asset(bundle.image),
      title: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Row(
          children: [
            Expanded(
                child: Text(bundle.title, style: TextStyle(fontSize: 32.0))),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: isBunleDone
                  ? Icon(Icons.done, color: Colors.lightGreen)
                  : Icon(Icons.cancel, color: Colors.red[300]),
            )
          ],
        ),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: bundle.resources.map((Resource resource) {
          return Checkbox(
            value: context.watch<BundlesData>().isDoneResource(resource),
            onChanged: (_) => context
                .read<BundlesData>()
                .toggleIsDoneResource(resource, bundle, room),
          );
        }).toList(),
      ),
    );
  }
}
