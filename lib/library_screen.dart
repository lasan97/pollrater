import 'package:flutter/material.dart';
import 'package:pollrater_example_01/library_detail_screen.dart';

class LibraryScreen extends StatefulWidget {

  const LibraryScreen({Key? key}) : super(key: key);

  @override
  State<LibraryScreen> createState() => _LibraryScreen();
}


class _LibraryScreen extends State<LibraryScreen> {

  List<BookTile> books = [
    BookTile(title2: "고딸영어1", imagePath: "https://image.aladin.co.kr/product/28629/95/cover500/k852835455_1.jpg"),
    BookTile(title2: "고딸영어2", imagePath: "https://image.aladin.co.kr/product/29462/71/cover500/k062837232_1.jpg"),
    BookTile(title2: "토비의 스프링3.1", imagePath: "https://image.aladin.co.kr/product/1950/57/cover150/8960773433_1.jpg"),
    BookTile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
      ),
      body: ListView(
        children: books,
        // children: [
        //   BookTile(title: title, imagePath: imagePath)
        //   ListTile(
        //     title: Text("고딸영문법1"),
        //     leading: Image.network("https://image.yes24.com/goods/106014857/XL"),
        //   )
        // ],
      )
    );
  }
}

class BookTile extends StatelessWidget {

  String? title;
  String? imagePath;

  BookTile({
    Key? key,
    String? title2,
    this.imagePath
  }) : super(key: key) {
    this.title = title2?? '개굵굴';
    this.imagePath = this.imagePath?? 'data:image/png;base64,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';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: ListTile(
        title: Text(this.title!),
        leading: Image.network(this.imagePath!),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => LibraryDetailScreen(title: this.title!, imagePath: this.imagePath!) )
          );
        },
      ),
    );
  }

}