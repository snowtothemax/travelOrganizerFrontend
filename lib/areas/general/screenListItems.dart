import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  final List<SelectableListItemWidget> elements;

  const ListItemWidget({Key? key, required this.elements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              color: Colors.grey[400],
            ),
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Title',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'Content',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: elements.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[300]!,
                    ),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                child: elements[index],
              );
            },
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(10.0)),
              color: Colors.grey[400],
            ),
            padding: EdgeInsets.all(10.0),
            width: double.infinity,
            child: Text(
              'Footer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectableListItemWidget extends StatelessWidget {
  final String title;
  final String content;
  final String footer;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectableListItemWidget({
    Key? key,
    required this.title,
    required this.content,
    required this.footer,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: isSelected ? Colors.blue[100] : null,
      onTap: onTap,
      title: Text(title),
      subtitle: Text(content),
      trailing: Text(footer),
    );
  }
}
