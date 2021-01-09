import 'package:flutter/material.dart';

class ExampleItem extends StatelessWidget {
  String _title;
  Function _onItemClicked;

  ExampleItem({
    @required String title,
    @required Function() onItemClicked,
  })  : _title = title,
        _onItemClicked = onItemClicked,
        assert(title != null),
        assert(onItemClicked != null);

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: _onItemClicked,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  _title,
                  style: TextStyle(fontSize: 20), //TODO add screen_utils
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      );
}
