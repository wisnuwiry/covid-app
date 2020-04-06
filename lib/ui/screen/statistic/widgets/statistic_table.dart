import 'package:flutter/material.dart';

class StatisticTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Card(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16), child: _buildTable()),
      ),
    );
  }

  Widget _buildTable() {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortColumnIndex: 1,
          sortAscending: true,
          columns: [
            DataColumn(label: Text('Provinsi')),
            DataColumn(label: Text('Terkonfirmasi'), numeric: true),
            DataColumn(label: Text('Sembuh'), numeric: true),
            DataColumn(label: Text('Meninggal'), numeric: true),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Jawa Tengah')),
              DataCell(Text('120')),
              DataCell(Text('2')),
              DataCell(Text('4')),
            ]),
            DataRow(cells: [
              DataCell(Text('Jawa Barat')),
              DataCell(Text('320')),
              DataCell(Text('-')),
              DataCell(Text('34')),
            ])
          ],
        ),
      ),
    );
  }
}
