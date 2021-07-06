import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          'https://fsb.zobj.net/crop.php?r=DEySo8evHo9FlBo-B6orOfEB8MF6_i4b8aI5kznkQNauXgEenym-sh6gIxPWPf-lhZzSuQww2eJvUsIcQhkVTFQUe3XtDJZ880T9GMv_lzXR71t-HTm-vNXGECUCizX760rL21JIM8hO6deW',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 15.0,
        )
      ],
    );
  }
}
