import 'package:flutter/material.dart';

class SliverWidget extends StatelessWidget {
  const SliverWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            toolbarHeight: 100,
            expandedHeight: 200,
            floating: true,
            pinned: true,
            snap: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://sportishka.com/uploads/posts/2022-11/1667515365_21-sportishka-com-p-zastavka-na-rabochii-stol-mashini-oboi-21.jpg",
                fit: BoxFit.cover,
              ),
              title: const Text("My Profile"),
            ),
          ),
          // SliverList.builder(
          //   itemCount: 40,
          //   itemBuilder: (context, index) {
          //     return Container(
          //       margin: const EdgeInsets.all(8),
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(12),
          //         color: Colors.green[((index + 1) * 100) % 900],
          //       ),
          //       child: ListTile(
          //         title: Text("Salom INDEX: $index"),
          //       ),
          //     );
          //   },
          // )
          SliverList.separated(itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue[((index + 1) * 100) % 900],
              ),
              child: ListTile(
                title: Text("Salom INDEX: $index"),
              ),
            );
          }, separatorBuilder: (context, index) {
            return index % 3 == 0
                ? Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.yellow[((index + 1) * 100) % 900],
                    ),
                    child: ListTile(
                      title: Text("REKLAMA INDEX: $index"),
                    ),
                  )
                : const SizedBox.shrink();
          }),
          SliverGrid.builder(
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red[((index + 1) * 100) % 900],
                ),
                child: ListTile(
                  title: Center(child: Text("Salom INDEX: $index")),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
