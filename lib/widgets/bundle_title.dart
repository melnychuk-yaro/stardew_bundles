import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';
import 'package:provider/provider.dart';

class BundleTitle extends StatelessWidget {
  const BundleTitle({
    required this.bundle,
    required this.room,
    required this.isBunleDone,
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
        padding: const EdgeInsets.only(left: 6.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                bundle.title,
                style: TextStyle(fontSize: 28.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: isBunleDone
                  ? Icon(Icons.done, color: Colors.lightGreen)
                  : Icon(Icons.cancel, color: Colors.red[300]),
            )
          ],
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (bundle.countToComplete > 0)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Collect ${bundle.countToComplete} items to complete',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          Row(
            children: bundle.resources.map((Resource resource) {
              return Flexible(
                child: SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: Checkbox(
                    value:
                        context.watch<BundlesData>().isDoneResource(resource),
                    onChanged: (_) => context
                        .read<BundlesData>()
                        .toggleIsDoneResource(resource, bundle, room),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
