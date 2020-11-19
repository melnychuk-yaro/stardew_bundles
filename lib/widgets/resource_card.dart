import 'package:flutter/material.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:provider/provider.dart';

class ResourceCard extends StatelessWidget {
  final Resource resource;

  const ResourceCard(this.resource);

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
        color:
            context.watch<Resource>().isCompleted ? Colors.green : Colors.white,
        child: InkWell(
          onTap: () => context.read<Resource>().toggleIsCompleted(),
          child: Column(
            children: [
              Expanded(
                child: Center(child: Image.asset(resource.image)),
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
