import 'package:expensestracker/helper/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String trailing;
  final void Function (BuildContext)? onEditPressed;
  final void Function (BuildContext)? onDeletePressed;

  const MyListTile({
    super.key,
    required this.title,
    required this.trailing,
    required this.onEditPressed,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: StretchMotion(),
        children: [
          SlidableAction(onPressed: onEditPressed,icon: Icons.settings,),
          SlidableAction(onPressed: onDeletePressed,icon: Icons.delete,),
        ],
      ),
      child: ListTile(
        title: Text(title),
        trailing: Text(trailing),
      ),
    );
  }
}
