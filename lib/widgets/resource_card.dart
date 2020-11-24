import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/bundles_data.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:provider/provider.dart';
import 'package:stardrew_bundles/models/room.dart';

class ResourceCard extends StatelessWidget {
  final Resource resource;
  final Bundle bundle;
  final Room room;

  const ResourceCard({this.resource, this.bundle, this.room});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        margin: EdgeInsets.all(4.0),
        clipBehavior: Clip.antiAlias,
        color: context.watch<BundlesData>().isDoneResource(resource)
            ? Colors.lightGreen
            : Colors.red[300],
        child: InkWell(
          onTap: () => context
              .read<BundlesData>()
              .toggleIsDoneResource(resource, bundle, room),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(resource.image),
                      if (resource.quantity > 1)
                        Text(
                          ' x${resource.quantity}',
                          style: TextStyle(fontSize: 28.0),
                        ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                height: 66.0,
                child: Center(
                  child: Text(
                    resource.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
