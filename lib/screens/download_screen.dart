import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('İndirilen'),
     actions: [
    IconButton(
    icon: Icon(Icons.filter_list),
    onPressed: () => _showFilterDialog(context),
    ),
    ],
        )
        Expanded(
        child: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
    ),
    itemCount: 10,
    itemBuilder: (context, index) => Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Stack(
    children: [
    AspectRatio(
    aspectRatio: 1,
    child: Container(
    color: Theme.of(context)
        .colorScheme
        .surfaceContainerHighest,
    child: Image.asset(
    "assets/images/dunya.jpg",
    fit: BoxFit.cover,
    ),
    ),
    ),
    Positioned(
    top: 8,
    right: 8,
    child: IconButton(
    icon: Icon(Icons.favorite_border),
    style: IconButton.styleFrom(
    backgroundColor:
    Theme.of(context).colorScheme.surface,
    ),
    onPressed: () {},
    ),
    ),
    ],
    ),
    Padding(
    padding: EdgeInsets.all(8),

    )
  }
 }
}