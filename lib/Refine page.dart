import 'package:flutter/material.dart';

import 'colours.dart';

class CommentSliderChoices extends StatefulWidget {
  @override
  _CommentSliderChoicesState createState() => _CommentSliderChoicesState();
}

class _CommentSliderChoicesState extends State<CommentSliderChoices> {
  double _sliderValue = 50;
  List<String> _selectedChoices = [];
  String _comment = '';
  String _selectedOption = '';
  List<String> _options = [
    'Available | Hey Let Us Connect',
    'Always | Stay Discrete And Watch',
    'Busy | Do Not Disturb | Will Catch Up Later',
    'SOS | Emergency! Need Assistance! HELP',
  ];
  List<String> _choices = [
    'Coffee',
    'Business',
    'Hobbies',
    'Friendship',
    'Movies',
    'Dinning',
    'Dating',
    'Matrimony',
  ];

  void _saveData() {
    print('Comment: $_comment');
    print('Slider Value: $_sliderValue');
    print('Selected Choices: $_selectedChoices');
    // Add your save logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Refine'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Select Your Availability"),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF264371)),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      _selectedOption.isNotEmpty
                          ? '$_selectedOption'
                          : 'Select an option',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: Icon(Icons.arrow_drop_down),
                    offset: Offset(0, 55),
                    onSelected: (String value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                    itemBuilder: (BuildContext context) {
                      return _options.map((String option) {
                        return PopupMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList();
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Text("Add Your Status"),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Hi community! I am open to new connections',
                border: OutlineInputBorder()
              ),
              maxLines: null,
              keyboardType: TextInputType.multiline,
              onChanged: (value) {
                setState(() {
                  _comment = value;
                });
              },
            ),
            SizedBox(height: 20),

            Text('Select a value: ${_sliderValue.round()}'),
            Container(
              child: Column(
                children: [

                  Slider(
                    value: _sliderValue,
                    onChanged: (newValue) {
                      setState(() {
                        _sliderValue = newValue;
                      });
                    },
                    min: 1,
                    max: 100,
                    divisions: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("1 Km"),
                      Text("100 Km")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Text('Select Choices:'),
            Wrap(
              spacing: 8.0,
              children: _choices.map((choice) {
                bool isSelected = _selectedChoices.contains(choice);
                return FilterChip(
                  label: Text(
                    choice,
                    style: TextStyle(
                      color: isSelected
                          ? Colors.white // If selected, set text color to white
                          : Theme.of(context).primaryColor, // If not selected, use primary color
                    ),
                  ),
                  selected: isSelected,
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        _selectedChoices.add(choice);
                      } else {
                        _selectedChoices.remove(choice);
                      }
                    });
                  },
                  selectedColor: Theme.of(context).primaryColor, // Use the primary color here
                  backgroundColor: isSelected ? Theme.of(context).primaryColor : Colors.white, // Change unselected box color to white
                  showCheckmark: false, // Remove the checkmark
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: _saveData,
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}