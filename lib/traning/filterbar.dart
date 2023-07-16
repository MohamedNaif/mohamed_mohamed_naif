import 'package:flutter/material.dart';

class FastFilterBar extends StatefulWidget {
  final List<String> items;
  final String currentItem;

  const FastFilterBar({
    required this.items,
    required this.currentItem,
  });

  @override
  _FastFilterBarState createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBar> {
  String _currentItem = '';

  @override
  void initState() {
    super.initState();
    _currentItem = widget.currentItem;
  }

  void _onItemTap(String item) {
    setState(() {
      _currentItem = item;
    });
  }

  Widget _buildCurrentFilterText() {
    switch (_currentItem) {
      case "قيد التنفيذ":
        return Text(
          "Filter selected: قيد التنفيذ",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
      case "الملغية":
        return Text(
          "Filter selected: الملغية",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
      case "تمت":
        return Text(
          "Filter selected: تمت",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
      case "تحت المراجعة":
        return Text(
          "Filter selected: تحت المراجعة",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
      case "المكتملة":
        return Text(
          "Filter selected: المكتملة",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
      default:
        return Text(
          "",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _onItemTap(widget.items[index]);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: _currentItem == widget.items[index]
                          ? Colors.red
                          : Colors.grey,
                      width: 1,
                    ),
                    color: _currentItem == widget.items[index]
                        ? Colors.red
                        : Colors.transparent,
                  ),
                  child: Text(
                    widget.items[index],
                    style: TextStyle(
                      color: _currentItem == widget.items[index]
                          ? Colors.white
                          : Colors.grey,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        if (_currentItem != null)
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: _buildCurrentFilterText(),
              ),
            ),
          ),
      ],
    );
  }
}
