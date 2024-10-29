// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String appBarText;
  final Widget? actionWidget;
  final Widget? leadingWidget;

  const AppBarWidget(String s,
      {super.key,
      required this.appBarText,
      this.actionWidget,
      this.leadingWidget});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      leading: leadingWidget ??
          const Icon(
            Icons.menu,
            color: Colors.black,
          ),
      title: Center(
        child: Text(
          appBarText,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      actions: [
        actionWidget ??
            Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        )),
                    Positioned(
                      top: 0,
                      right: 3,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: const Center(
                          child: Text(
                            "5",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
