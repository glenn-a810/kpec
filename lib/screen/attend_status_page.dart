import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AttendStatus extends StatefulWidget {
  const AttendStatus({Key? key}) : super(key: key);

  @override
  State<AttendStatus> createState() => _AttendStatusState();
}

class _AttendStatusState extends State<AttendStatus> {
  @override
  void initState() {
    super.initState();
    _downloadCsv();
  }

  Future<void> _downloadCsv() async {
    final Uri url =
        'https://projects.fivethirtyeight.com/soccer-api/international/spi_global_rankings_intl.csv';
    try {
      var csvRead = await http.read(url);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DataTablePage(csvString: csvRead),
        ),
      );
    } catch (e) {
      print('$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('출결현황 로딩중...'),
    );
  }
}

class DataTablePage extends StatefulWidget {
  final csvString;

  DataTablePage({Key? key, @required this.csvString}) : super(key: key);

  @override
  _DataTablePageState createState() => _DataTablePageState();
}

class _DataTablePageState extends State<DataTablePage> {
  late List<String> csvRows;
  late List<String> csvHeadingRow;

  @override
  void initState() {
    super.initState();
    List<String> csvSplit = widget.csvString.split('\n');
    csvHeadingRow = csvSplit[0].split(',');
    csvSplit.removeAt(0);
    csvRows = csvSplit;
  }

  void _dataColumnSort(int columnIndex, bool ascending) {
    print('_dataColumnSort() $columnIndex, $ascending');
  }

  List<DataColumn> _getColumns() {
    List<DataColumn> dataColumn = [];

    for (var i in csvHeadingRow) {
      if (i == 'rank') {
        dataColumn.add(
          DataColumn(
            label: Text(i),
            tooltip: i,
            numeric: true,
            onSort: _dataColumnSort,
          ),
        );
      } else {
        dataColumn.add(
          DataColumn(
            label: Text(i),
            tooltip: i,
          ),
        );
      }
    }
    return dataColumn;
  }

  List<DataRow> _getRows() {
    List<DataRow> dataRow = [];
    for (var i = 0; i < csvRows.length - 1; i++) {
      var csvDataCells = csvRows[i].split(',');
      List<DataCell> cells = [];
      for (var j = 0; j < csvDataCells.length; j++) {
        cells.add(
          DataCell(
            Text(csvDataCells[j]),
          ),
        );
      }
      dataRow.add(
        DataRow(cells: cells),
      );
    }
    return dataRow;
  }

  Widget _getDataTable() {
    return DataTable(
      horizontalMargin: 12.0,
      columnSpacing: 28.0,
      columns: _getColumns(),
      rows: _getRows(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: _getDataTable(),
        ),
      ),
    );
  }
}
