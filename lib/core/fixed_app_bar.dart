import 'package:flutter/Material.dart';

class FixedAppBar extends StatelessWidget {
  const FixedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: const Icon(Icons.arrow_back_ios,
      color: Colors.black,),
      onPressed: (){
        Navigator.of(context).pop();
      },),
    );
  }
}
