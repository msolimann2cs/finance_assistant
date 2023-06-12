

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class Reportsscreen extends StatefulWidget {
//   const Reportsscreen({Key? key}) : super(key: key);
//   static String id = 'reports_screen';
//
//   @override
//   State<Reportsscreen> createState() => _ReportsscreenState();
// }
//
// class _ReportsscreenState extends State<Reportsscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Reports'),
//       ),
//       body: Center(
//         child: Text(
//           'Reports',
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }


class Reportsscreen extends StatefulWidget {
  static String id = 'reports_screen';

  @override
  _ReportsscreenState createState() => _ReportsscreenState();
}

class _ReportsscreenState extends State<Reportsscreen> {
  String selectedDate = 'Day';
  String selectedSorting = 'Ascending';
  String searchQuery = '';

  List<Map<String, dynamic>> reportData = [
    {'date': '2023-06-01', 'item': 'Item 1', 'cost': 100},
    {'date': '2023-06-02', 'item': 'Item 2', 'cost': 200},
    {'date': '2023-06-03', 'item': 'Item 3', 'cost': 150},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton<String>(
                  value: selectedDate,
                  onChanged: (value) {
                    setState(() {
                      selectedDate = value!;
                    });
                  },
                  items: <String>['Day', 'Month', 'Year']
                      .map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                ),
                DropdownButton<String>(
                  value: selectedSorting,
                  onChanged: (value) {
                    setState(() {
                      selectedSorting = value!;
                    });
                  },
                  items: <String>['Ascending', 'Descending']
                      .map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: reportData.length,
              itemBuilder: (context, index) {
                final item = reportData[index];
                final itemDate = DateTime.parse(item['date']);

                if (selectedDate == 'Day' &&
                    itemDate.day != DateTime.now().day) {
                  return SizedBox.shrink();
                } else if (selectedDate == 'Month' &&
                    itemDate.month != DateTime.now().month) {
                  return SizedBox.shrink();
                } else if (selectedDate == 'Year' &&
                    itemDate.year != DateTime.now().year) {
                  return SizedBox.shrink();
                }

                if (searchQuery.isNotEmpty &&
                    !item['item'].toString().toLowerCase().contains(searchQuery.toLowerCase())) {
                  return SizedBox.shrink();
                }

                return ListTile(
                  title: Text(item['item']),
                  subtitle: Text('Cost: \$${item['cost']}'),
                );
              },
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showDialog(
      //       context: context,
      //       builder: (BuildContext context) => AddItemDialog(),
      //     );
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}

// class AddItemDialog extends StatefulWidget {
//   @override
//   _AddItemDialogState createState() => _AddItemDialogState();
// }
//
// class _AddItemDialogState extends State<AddItemDialog> {
//   TextEditingController itemNameController = TextEditingController();
//   TextEditingController itemCostController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('Add Item'),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           TextField(
//             controller: itemNameController,
//             decoration: InputDecoration(
//               labelText: 'Item Name',
//             ),
//           ),
//           TextField(
//             controller: itemCostController,
//             keyboardType: TextInputType.number,
//             decoration: InputDecoration(
//               labelText: 'Item Cost',
//             ),
//           ),
//         ],
//       ),
//       actions: [
//         TextButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           child: Text('Cancel'),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             final itemName = itemNameController.text;
//             final itemCost = double.tryParse(itemCostController.text) ?? 0.0;
//
//             if (itemName.isNotEmpty && itemCost > 0) {
//               // Add the item to the reportData list
//               setState(() {
//                 reportData.add({
//                   'date': DateTime.now().toString(),
//                   'item': itemName,
//                   'cost': itemCost,
//                 });
//               });
//
//               Navigator.of(context).pop();
//             }
//           },
//           child: Text('Add'),
//         ),
//       ],
//     );
//   }
// }