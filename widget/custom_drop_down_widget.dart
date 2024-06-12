import 'package:flutter/material.dart';

class CustomDropdownWidget<T> extends StatefulWidget {
  List<T> myList = [];
   VoidCallbackAction?  onTap;

  @override

  _CustomDropdownWidgetState<T> createState() => _CustomDropdownWidgetState<T>();
}

class _CustomDropdownWidgetState<T> extends State<CustomDropdownWidget> {

  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];

  bool _isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Colors.grey.shade50,
          width: 1.0,
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isDropdownOpen = !_isDropdownOpen;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                       'Select an option',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Icon(
                    _isDropdownOpen ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),
          if (_isDropdownOpen)
            Container(
              height: 200.0, // Set the desired height of the dropdown list
              child: ListView.builder(
                itemCount: widget.myList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.myList.first),
                    onTap:(){
                      widget.onTap!;
                    },
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
